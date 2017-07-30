#!/usr/bin/gawk -f
BEGIN { bin_width = 1.3}

BEGINFILE {
  part=""
  split(FILENAME, a, "_")
  arrival = a[8]
  protocol =a[9]
  print "processing file " FILENAME arrival protocol > "/dev/stderr"
}
/Dumping Endtoend:/ {part = "e"; next}
/Dumping nodal:/ {part = "n"; next}

part {
  bin = $1; #  rounded($1)
  sum[part FS arrival FS protocol FS bin] += $2 # /bin
  count_bin[part FS arrival FS protocol] += $2
}
END {
  for(k in sum) {
    split(k, a, FS)
    print k,sum[k]/count_bin[a[1] FS a[2] FS a[3]]
  }
}

function rounded(x) {
  return bin_width**(int(log(x+1/bin_width)/log(bin_width)))
}
