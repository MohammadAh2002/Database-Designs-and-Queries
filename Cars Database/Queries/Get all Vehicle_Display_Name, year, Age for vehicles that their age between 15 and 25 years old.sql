
Select * From (

Select VehicleDetails.Vehicle_Display_Name, YEAR, 
Age = ( YEAR(GETDATE()) - VehicleDetails.Year)
From VehicleDetails

) T1

Where Age Between 15 and 20;