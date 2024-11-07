
Select *,

DoorNumber = 
case 
When NumDoors = 0 Then 'ZeroDoors'
When NumDoors = 2 Then 'TwoDoors'
When NumDoors = 3 Then 'ThreeDoors'
When NumDoors = 4 Then 'FourDoors'
When NumDoors = 5 Then 'FiveDoors'
When NumDoors = 6 Then 'SixDoors'
When NumDoors = 8 Then 'EightDoors'
else 'NotSet'
End

From

(

Select Vehicle_Display_Name, NumDoors
From VehicleDetails

) t1
