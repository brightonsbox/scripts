#!/bin/bash

## declare an array variable
declare -a arr=("element1" "element2" "element3")

## loop through the array
for i in "${arr[@]}"
do
   echo "$i"
done

## Individual access by "${arr[0]}", "${arr[1]}" etc. 

## Iterate with index:
array_count=${#arr[@]}
for (( i=0; i<${array_count}; i++ ));
do
  echo "Element index $i: ${arr[$i]}"
done

