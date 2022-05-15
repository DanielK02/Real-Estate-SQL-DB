-- Queries RealEstateProject Daniel Krigel 1018

-- 1. Calculate the sum of all sales this year by house type
select HT.HouseTypeName, H.HouseTypeID, sum(SalePrice - AskingPrice) '2022 Profit'
from Sales S, Houses H, HouseType HT
where S.HouseID = H.HouseID and HT.HouseTypeID = H.HouseTypeID and year(SaleDate) = year(getdate())
group by H.HouseTypeID, HT.HouseTypeName

-- 2. Display Customers who sold through the company and bought a higher priced house than they sold

select FirstName, LastName, BuyerID, S1.SalePrice
from Customers C, Sales S1 join (select SellerID, SalePrice from Sales) as S2 on S1.BuyerID = S2.SellerID
where C.CustomerID = S1.BuyerID and S1.Saleprice > S2.SalePrice
order by buyerID

-- 3. Display the most expensive neighbourhood by average of it sales

select top 1 N.CityName, NeighbourhoodName, H.NeighbourhoodID, avg(SalePrice) 'AVGSaleByHood'
from Sales S, Houses H join (select CityName, NeighbourhoodID, NeighbourhoodName from Neighbourhoods, Cities  
												where Neighbourhoods.CityID = Cities.CityID) 
												as N on H.NeighbourhoodID = N.NeighbourhoodID
where S.HouseID = H.HouseID
group by H.NeighbourhoodID, NeighbourhoodName, N.CityName
order by avg(saleprice) desc

-- 4. Show the best employee for each year

select FirstName, LastName, A.AgentID, max(SalePrice - AskingPrice) 'MaxProfitPerYear', Y.Years
from RealEstateAgents A, Sales join (select year(SaleDate) 'Years', max(SalePrice - AskingPrice) 'MaxProfitPerYear' 
										from Sales group by year(SaleDate)) 
										as Y on Y.Years = year(Sales.Saledate) and Y.MaxProfitPerYear = Sales.SalePrice - Sales.AskingPRice
where A.AgentID = Sales.AgentID
group by Y.Years, A.AgentID, FirstName, LastName
order by  Y.Years

-- 5. Offer a new house which is more spacious to a customer that bought a house 2 years ago or more in the same city he lives
-- House must be offered to sale

-- I chose one customer according to this, customers who purchased more than 2 years ago, and the next query are the houses offered
-- As it says in the instructions - offer a CUSTOMER and not a few.
select BuyerID, SaleDate, HouseSize, CityName
from Sales, Houses, Neighbourhoods N, Cities C
where Sales.HouseID = Houses.HouseID and Houses.NeighbourhoodID = N.NeighbourhoodID and N.CityID = C.CityID and
year(SaleDate) < year(getdate()) - 2

-- Offer to Customer 1 (BuyerID 1), SubQuery is the customer details, outer query the offer based on sub query.
select H.HouseID, HouseAddress, C.CityName, H.HouseSize, OwnerAskingPrice, H.ForSale, CurrentOwner
from Houses H, Neighbourhoods N, Cities C join (select BuyerID, SaleDate, HouseSize, CityName
												from Sales, Houses, Neighbourhoods N, Cities C
												where Sales.HouseID = Houses.HouseID and Houses.NeighbourhoodID = N.NeighbourhoodID and N.CityID = C.CityID and
												year(SaleDate) < year(getdate()) - 2 and BuyerID = 1) as Buyer on Buyer.CityName = C.CityName
where H.NeighbourhoodID = N.NeighbourhoodID and N.CityID = C.CityID and H. ForSale = 'Y' and H.HouseSize > Buyer.HouseSize



