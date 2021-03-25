#!/bin/bash
#Creating Variable
read -p 'Enter Date. ' Date
read -p 'What time are you searching for? ' Time
read -p 'what game are you searching for [Blackjack, Roulette, Texas Hold em]?  ' Game 


#An if statement to find the correct Game 
choice="5"

if [ "$Game" == "Blackjack" ];
then
 $choice = "{$1,$2,$3,$4}"

elif [ "$Game" == "Roulette" ];
then 
 $choice = "{$1,$2,$5,$6}" 


elif [ "$Game" == "Texas Hold em" ];
then
 $choice == "{$1,$2,$7,$8}"
fi
#Trying to Concatinate to make the File NAmes
#Date2 = "_Dealer_schedule"
#Date3 = "$Date$Date2"

#For Testing Pourposes
#echo $Date
#echo $Date2
#echo $Date3
echo $choice

#The main Script
awk '{print $choice}'  "${Date}_Dealer_schedule" | grep $Time 