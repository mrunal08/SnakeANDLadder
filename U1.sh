#!/bin/bash
snakeLadder

function snakeLadder(){
	echo "Welcome to Snake And ladder game"
	position=0;
	echo "Player added at " $position1 "position"
	rollDice
}

function rollDice(){
	dice=$((RANDOM%6+1))
	echo $dice
}
