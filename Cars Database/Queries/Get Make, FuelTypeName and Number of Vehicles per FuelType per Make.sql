
Select Makes.Make, FuelTypes.FuelTypeName,  NumberOfVehicles = count(*)

from VehicleDetails

inner join FuelTypes
on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID 

inner join Makes
on VehicleDetails.MakeID = Makes.MakeID 

group by  Makes.Make,FuelTypes.FuelTypeName

Order by Make;