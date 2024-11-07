
SELECT dbo.VehicleDetails.ID, dbo.VehicleDetails.MakeID, dbo.Makes.Make, dbo.VehicleDetails.ModelID, dbo.MakeModels.ModelName, dbo.VehicleDetails.SubModelID, dbo.SubModels.SubModelName, dbo.VehicleDetails.BodyID, 
                  dbo.Bodies.BodyName, dbo.VehicleDetails.Vehicle_Display_Name, dbo.VehicleDetails.Year, dbo.VehicleDetails.DriveTypeID, dbo.DriveTypes.DriveTypeName, dbo.VehicleDetails.Engine, dbo.VehicleDetails.Engine_CC, 
                  dbo.VehicleDetails.Engine_Cylinders, dbo.VehicleDetails.Engine_Liter_Display, dbo.VehicleDetails.FuelTypeID, dbo.FuelTypes.FuelTypeName, dbo.VehicleDetails.NumDoors
FROM     dbo.DriveTypes INNER JOIN
                  dbo.Bodies INNER JOIN
                  dbo.Makes INNER JOIN
                  dbo.MakeModels ON dbo.Makes.MakeID = dbo.MakeModels.MakeID INNER JOIN
                  dbo.SubModels ON dbo.MakeModels.ModelID = dbo.SubModels.ModelID INNER JOIN
                  dbo.VehicleDetails ON dbo.Makes.MakeID = dbo.VehicleDetails.MakeID AND dbo.MakeModels.ModelID = dbo.VehicleDetails.ModelID AND dbo.SubModels.SubModelID = dbo.VehicleDetails.SubModelID ON 
                  dbo.Bodies.BodyID = dbo.VehicleDetails.BodyID INNER JOIN
                  dbo.FuelTypes ON dbo.VehicleDetails.FuelTypeID = dbo.FuelTypes.FuelTypeID ON dbo.DriveTypes.DriveTypeID = dbo.VehicleDetails.DriveTypeID
GO



Select * from VehicleMasterView;