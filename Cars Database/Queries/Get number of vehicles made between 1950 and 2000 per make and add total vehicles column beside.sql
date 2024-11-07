

Select Make = Makes.Make, NumberOfVehicles = count(*), TotalVehicles = (Select Count(*) from VehicleDetails)
from VehicleDetails inner join Makes
on VehicleDetails.MakeID = Makes.MakeID 
where Year between 1950 and 2000 
group by Make
order by NumberOfVehicles Desc


