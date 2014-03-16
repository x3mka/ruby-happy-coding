#require 'prime'
#def f(n)
#p,e=n.prime_division.transpose
#x=e.map{|i|(0..i).to_a}
#d=x.shift.product(*x).map do|ps|
#p.zip(ps).map{|p,e|p**e}.inject(:*)
#end
#end
gets.to_i.times do
a=gets.to_i
b=a*a+1
d=(Math.sqrt b).to_i+1
while b%d>0 do d-=1 end
p 2*a+d+b/d
end

# cpp code got AC, the same in ruby TLE
#include<stdio.h>
#include<math.h>
#int main(){
#  long long t,a,i;
#  scanf("%lld",&t);
#  while(t--){
#      scanf("%lld",&a);
#  long long i=(long long)sqrt(1.0*(a*a+1));
#  while((a*a+1)%i) i--;
#  printf("%lld\n",2*a+i+(a*a+1)/i);
#  }
#  return 0;
#  }




