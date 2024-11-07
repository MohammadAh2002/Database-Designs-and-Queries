
Select Makes.Make, DriveTypes.DriveTypeName, TotalVehicles = Count(*)
From Makes Inner Join VehicleDetails
on Makes.MakeID = VehicleDetails.MakeID
Inner Join DriveTypes
on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
Group By Makes.Make, DriveTypes.DriveTypeName
Having Count(*) > 10000
Order By Make, DriveTypeName Asc, TotalVehicles Desc;

