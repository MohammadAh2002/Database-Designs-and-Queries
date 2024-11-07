Select Distinct Makes.Make, FuelTypes.FuelTypeName From VehicleDetails inner Join FuelTypes
on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Inner Join Makes
on VehicleDetails.MakeID = Makes.MakeID
Where FuelTypes.FuelTypeName = 'GAS'

