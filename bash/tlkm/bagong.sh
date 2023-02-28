filename='surat.txt'
n=1
while read line; do
  tr '[A-Za-z]' '[O-ZA-No-za-n]' <<< $line >> trsurat.txt
  n=$((n+1))
done < $filename