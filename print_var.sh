RET=0

echo "Building [$RET]" >> build.output

foo=$MY_SECRET
ss=""
for (( i=0; i<${#foo}; i++ )); do
  #echo "${foo:$i:1}" >> build.output
  ss="$ss$IFS${foo:$i:1}"
done
echo $ss >> build.output
echo "Adios desde FORK" >> build.output

exit $RET
