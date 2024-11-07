Select * From VehicleDetails inner Join FuelTypes
on VehicleDetails.FuelTypeID = FuelTypes.FuelTypeID
Where FuelTypes.FuelTypeName = 'GAS';