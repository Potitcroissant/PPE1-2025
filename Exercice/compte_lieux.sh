cat $1/$1_$2*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -n | tail -n $3
