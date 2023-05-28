
# a=4.3
# b=3.7
# echo "$a + $b" | bc

# echo "scale=1; 5.5 / 3.2" | bc

# echo "scale=2; sqrt(2)" | bc -l

echo "scale=2; $(cat index.txt)" | bc
