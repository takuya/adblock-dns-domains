
URLs=(
  https://easylist.to/easylist/easylist.txt
  https://easylist.to/easylist/easyprivacy.txt
  https://secure.fanboy.co.nz/fanboy-cookiemonster.txt
  https://secure.fanboy.co.nz/fanboy-annoyance.txt
)
__TEMP=$( mktemp --suffix=.list.txt )
OUTPUT=ad-domains.txt

for url in ${URLs[@]}; do
  echo $url
  curl -s  $url >> $__TEMP
done

cat $__TEMP |  \
  grep -Po  '(?<=^\|\|).+(?=\^(\$document|$))'  |  \
  sort | uniq | awk ' { print "||"$1"^" }' \
  > $OUTPUT
NUM=$(cat $OUTPUT | wc -l )

echo $NUM domains found.
