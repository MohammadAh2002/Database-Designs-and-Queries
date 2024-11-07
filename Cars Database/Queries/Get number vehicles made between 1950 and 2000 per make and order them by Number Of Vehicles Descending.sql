Select Make = Makes.Make, NumberOfVehicles = count(*) 
from VehicleDetails inner join Makes
on VehicleDetails.MakeID = Makes.MakeID
where Year between 1950 and 2000
group by Makes.Make
order by NumberOfVehicles Desc;
