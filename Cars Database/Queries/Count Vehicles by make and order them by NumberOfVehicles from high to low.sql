

Select Make, VehicleCount = Count(*) from Makes
Inner Join VehicleDetails 
on Makes.MakeID = VehicleDetails.MakeID
Group By Make
Order By VehicleCount Desc;