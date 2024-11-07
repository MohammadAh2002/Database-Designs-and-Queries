
Select Makes.Make, DriveTypes.DriveTypeName, TotalVehicles = Count(*)
From Makes Inner Join VehicleDetails
on Makes.MakeID = VehicleDetails.MakeID
Inner Join DriveTypes
on DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID
Group By Makes.Make, DriveTypes.DriveTypeName
Order By Make, DriveTypeName Asc, TotalVehicles Desc;



SELECT        distinct Makes.Make, DriveTypes.DriveTypeName, Count(*) AS Total
FROM            DriveTypes INNER JOIN
                         VehicleDetails ON DriveTypes.DriveTypeID = VehicleDetails.DriveTypeID INNER JOIN
                         Makes ON VehicleDetails.MakeID = Makes.MakeID

Group By Makes.Make, DriveTypes.DriveTypeName

Order By Make ASC, Total Desc