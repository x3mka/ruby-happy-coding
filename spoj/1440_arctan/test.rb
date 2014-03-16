require 'prime'
n= 4800
f = n.prime_division
pd= f.map{ |pd| (0..pd[1]).map{ |i| pd[0]** i } }
s = pd.shift
pp = s.product(*pd)
#.map{ |a, b| a* b }).uniq
p pp