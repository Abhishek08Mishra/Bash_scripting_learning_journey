#!/bin/bash

# ------------------------------------------------------------
# Task 9: Simple ATM Menu
# Goal: Practice variables, arithmetic, and loops
# Instructions:
# 1. Create balance=8000
# 2. Menu:
#    1) Check Balance
#    2) Deposit Money
#    3) Withdraw Money
#    q) Quit
# 3. Use case:
#    Check → print balance
#    Deposit → add amount to balance
#    Withdraw → subtract if enough balance
#    Quit → exit
# 4. Loop until user quits
# ------------------------------------------------------------

balance=8000
while true; do
	clear
	echo
	echo "-------------------"
	echo "Simple ATM Menu 🏧️"
	echo "-------------------"
	echo
	echo "1) Check Balance"
	echo "2) Deposit Money"
	echo "3) Withdraw Money"
	echo "q) Quit"
	echo
	read -p "Enter your option : " choice
	echo
	
	case "${choice,,}" in
	1)
		echo "Balance Inquiry"
		echo "---------------"
		echo
		echo "Your Current Bank balance is RS $balance"
		echo
		;;
	2)
		echo "Deposit Money"
		echo "-------------"
		echo
		read -p "Enter your desired amount to deposit = RS. " money
		echo
		if ! [[ "$money" =~ ^[0-9]+$ ]]; then
			echo "Please enter a valid amount!"
		fi
		
		
		balance=$(( balance + money ))
		echo "Total Balance = Rs. $balance"
		echo
		;;
	3)
		echo "Withdraw Money"
		echo "--------------"
		echo
		read -p "Enter your desired amount to withdraw = RS. " money
		echo
		if ! [[ "$money" =~ ^[0-9]+$ ]]; then
			echo "Please enter a valid amount!"
		fi
		
		balance=$(( balance - money ))
		echo "Total Balance = Rs. $balance"
		echo
		;;
	q)
		echo "Program Closed !"
		echo "Thank you for using this ATM !"
		echo "Please Visit Again 🙏️🥰️"
		echo
		break
		;;
	*)
		echo "System Alert 🚨️!"
		echo "Please enter a valid input or valid option !"
		echo "Try again !"
		;;
	esac
	echo
	read -p "Press enter to continue...."
done
