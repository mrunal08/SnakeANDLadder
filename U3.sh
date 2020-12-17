#!/bin/bash

position=0;
player1=1;
function snakeLadder(){
   echo "!!!!!Welcome to Snake And ladder game!!!!"
   echo "Player added at  $position position"
   rollDice
}

function rollDice(){
   dice=$((RANDOM%6+1))
	echo "Dice ROlled : "$dice
	option
   echo "Position after dice rolled : "$position

}

function option(){
	optionDice=$((RANDOM%3))

	case $optionDice in
	1) position = 0
		echo "Option : No Play"
		;;

	2) position = $((position + $dice))
		echo "Option : Ladder"
		;;

	3) position = $((position - $dice))
		echo "Option : Snake"
			if [[ position -le 0 ]]
			then
				position=0
			fi
		;;
esac
}

echo "!!!!Snake And Ladder Game has started!!!!!!"
snakeLadder

