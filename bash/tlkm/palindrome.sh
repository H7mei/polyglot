file="file.txt"

string=$(cat "$file")

for word in $string
do
  reverse=""
  len=${#word}

  for (( i=$len-1; i>=0; i-- ))
  do 
    reverse="$reverse${word:$i:1}"
  done

  if [ $word == $reverse ]
  then
      echo -n " palindrome " >> text.txt
  else
      echo -n " !palindrome " >> text.txt
  fi
done 

