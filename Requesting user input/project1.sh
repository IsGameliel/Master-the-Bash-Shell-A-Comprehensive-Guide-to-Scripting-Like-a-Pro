#!/bin/bash

num1=$1
op=$2
num2=$3

case $op in
  "+")
    result=$(($num1 + $num2))
    ;;
  "-")
    result=$(($num1 - $num2))
    ;;
  "*")
    result=$(($num1 * $num2))
    ;;
  "/")
    result=$(echo "scale=2; $num1 / $num2" | bc)
    ;;
  *)
    echo "Invalid operator"
    exit 1
esac

echo "Result: $result"
