#!/usr/bin/gawk -f
BEGIN { bin_width = 1.3}

{
  part = $1
  arrival = $2
  protocol = $3
  bin = rounded($4)
  bin_points = calc_bin_points($4)
#  print $4, $5, bin, bin_points
  sum[part FS arrival FS protocol FS bin] += $5 / bin_points

}
END {
  for(k in sum) {
    print k,sum[k]
  }
}

function rounded(x) {
  return bin_width**(int(log(x)/log(bin_width))+0.5)
}

function calc_bin_points(x) {
  q = int(log(x)/log(bin_width))
  x1 = bin_width**q
  x2 = bin_width**(q+1)
# print q, x1, x2, ceil(x1), ceil(x2)
  return ceil(x2) - ceil(x1)
}

function ceil(x)
{
return (x == int(x)) ? x : int(x)+1
}
