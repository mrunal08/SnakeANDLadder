#!/bin/bash
maxValue=100
position=0
player1=1
function snakeLadder() {
      echo "Player added at" $position "position"
		option
		echo "Position after dice rolled=" $position

}

function rollDice() {
      dice=$((RANDOM%6+1))
		echo "Dice Rolled=" $dice
}

function option(){
		while [[ $position -lt $maxValue ]]
		do
			rollDice
			optionDice=$((RANDOM%3+1))

	      case $optionDice in

        	1) echo "Option: No Play"
				;;

	      2) position=$((position+$dice))
		 	   echo "Option: Ladder"
					if [[ position -gt 100 ]]
					then
							position=$((option-$dice))
					fi
				;;

	      3) position=$((position-$dice))
		   	echo "Option: Snake"

	           	if [[ position -le 0 ]]
                	then
                	   position=0
               fi
				;;
	   	esac
		echo "Position"=$position
	   done

}

echo "Snake and Laddder Game Started"
snakeLadder
