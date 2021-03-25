#Creating Variable
read -p 'Enter Date. ' Date
read -p 'What time are you searching for? ' Time

#Trying to Concatinate to make the File NAmes
#Date2 = "_Dealer_schedule"
#Date3 = "$Date$Date2"

#For Testing Pourposes
#echo $Date
#echo $Date2
#echo $Date3
#echo $Choice

#The main Script
awk '{print $1,$2,$5,$6}'  "${Date}_Dealer_schedule" | grep $Time 