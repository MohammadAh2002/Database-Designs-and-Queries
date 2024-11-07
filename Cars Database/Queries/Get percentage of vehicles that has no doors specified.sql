
select 
	(

		CAST(	(select count(*) as TotalWithNoSpecifiedDoors from VehicleDetails
		where NumDoors is Null) as float)

		/
	
		Cast( (select count(*) from VehicleDetails as TotalVehicles) as float)
	
	) as PercOfNoSpecifiedDoors