{
   a[$1,count[$1]]=$2;
   s[$1]+=$2;
   count[$1]++;
}
END {
    for (n in count) {
        m[n] = s[n]/count[n];
        for (i=0;i <count[n]; i++) {
            sumvar[n] += (a[n,i] - m[i]) ^2;
        }
        v[n] = sumvar[n]/count[n]
    }

   #for (t = -NR; t<= NR; t++) {
    for (t = -100; t<= 100; t++) {
        printf "%s ", t
        for (n in count) {
            for (i = (0 > - t) ? 0 : - t ; 
                     i < ((count[n] < count[n] - t) ? count[n] : count[n] -t);
                     i++) {
#                 print i, i+t
                sum[n,t] += (a[n,i] - m[n] ) * (a[n,i+t] - m[n] )
            }
            printf "%s ", sum[n,t]/v[n];
        }
        print ""
    }
#   print m
}
