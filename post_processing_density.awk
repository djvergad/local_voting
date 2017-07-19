#!/usr/bin/awk -f
{
    nodes=$1;
    range=$2;
    size=$3;
    frame=$4;
    conns=$5;
    type=$6;

    if ($12 != $5 ) {
        # print "A connection did not finish", $0
    } else {
        count[nodes,range,size,frame,conns,type]++;
        avg[nodes,range,size,frame,conns,type]+=$8;
        fair[nodes,range,size,frame,conns,type]+=$9;
        max[nodes,range,size,frame,conns,type]+=$10;
        min[nodes,range,size,frame,conns,type]+=$11
    }
 }
 END{
    for (i in count) {
    n=split(i,sep,SUBSEP);
    for (x=1;x<=n;x++) {
        printf "%s ", sep[x];
    }

       print avg[i]/count[i], 
             fair[i]/count[i], max[i]/count[i], min[i]/count[i], count[i]
    }
 } 
