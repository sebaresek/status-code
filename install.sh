#/bin/bash
wile read line; do
   response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$line")
   echo $line: $respose
done < lista.txt
