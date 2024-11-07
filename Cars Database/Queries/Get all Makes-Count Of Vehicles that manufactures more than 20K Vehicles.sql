
Select Make, VehicleCount = Count(*) from Makes
Inner Join VehicleDetails 
on Makes.MakeID = VehicleDetails.MakeID
Group By Make

Having Count(*) > 20000
Order By VehicleCount Desc;