#/bin/bash
a=1
for i in *.$1; do
  new=$(printf "%04d.$1" "$a") #04 pad to length of 4
  mv -- "$i" "$new"
  let a=a+1
done
