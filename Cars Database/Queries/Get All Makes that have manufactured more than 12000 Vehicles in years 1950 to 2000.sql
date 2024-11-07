
Select Make = Makes.Make, NumberOfVehicles = count(*) 
from VehicleDetails inner join Makes
on VehicleDetails.MakeID = Makes.MakeID 
where Year between 1950 and 2000 
group by Make
Having count(*) > 12000
order by NumberOfVehicles Desc

Select * from (

Select Make = Makes.Make, NumberOfVehicles = count(*) 
from VehicleDetails inner join Makes
on VehicleDetails.MakeID = Makes.MakeID 
where Year between 1950 and 2000 
group by Makes.Make

) T1
Where NumberOfVehicles > 12000
order by NumberOfVehicles Desc