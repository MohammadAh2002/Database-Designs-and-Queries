Select Distinct Make, DriveTypes.DriveTypeName From Makes
Inner Join VehicleDetails 
on Makes.MakeID = VehicleDetails.MakeID
Inner Join DriveTypes
on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID
Where DriveTypes.DriveTypeName = 'FWD';



