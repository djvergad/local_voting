#!/bin/bash 
echo -n "$@ "
~/local/bin/java -jar dist/Local_Voting.jar $@ | 
    awk 'BEGIN{min=1e15}$1=="Connection:"&&!/NaN/{sum+=$2;sum2+=$2^2;count++;max=$2>max?$2:max;min=$2<min?$2:min}END{print sum/count,sum^2/(count*sum2),max,min,count}'
