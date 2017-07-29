#!/usr/bin/awk -f
!/NaN/{
    nodes=$1;
    range=$2;
    size=$3;
    frame=$4;
    arrRate=$5;
    gamma=$6;
    pl=$7;
    
#    print nodes,range,size,frame,arrRate,gamma,pl;
    count[nodes,range,size,frame,arrRate,gamma,pl]++;
    sumth[nodes,range,size,frame,arrRate,gamma,pl]+=$11;
    sumdel[nodes,range,size,frame,arrRate,gamma,pl]+=$13;
    sumdeliv[nodes,range,size,frame,arrRate,gamma,pl]+=$15;
    sumthf[nodes,range,size,frame,arrRate,gamma,pl]+=$17;
    sumdelf[nodes,range,size,frame,arrRate,gamma,pl]+=$19;
    sumdelivf[nodes,range,size,frame,arrRate,gamma,pl]+=$21;
 }
 END{
    for (i in count) {
    n=split(i,sep,SUBSEP); 

#printf "%s", i
#for (x in sep) {
       for (x=1;x<=n;x++) {
           printf "%s ", sep[x];
       }
       print sumth[i] / count[i], 
             sumdel[i] / count[i], 
             sumdeliv[i] / count[i], 
             sumthf[i] / count[i], 
             sumdelf[i] / count[i], 
             sumdelivf[i] / count[i], 
             count[i]
    }
 } 
