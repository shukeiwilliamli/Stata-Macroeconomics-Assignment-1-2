//Assignment 2 Exercise 2
clear              
clear matrix
capture log close
cd "C:\Users\William Li\Documents\Uni Marburg 2.0\WS18 Macroeconomics\Tutorial\Assignment 2\" 

log using "Assignment 2 ex 2", replace

use assignment_ifm2.dta, clear

//2a
gen time2=tq(1973q1)+_n-1
format time2 %tq
tsset time2, quarterly
//2b
tsline s l1.f
//test the unbiasedness Hypothesis//
reg s l1.f 
reg s l1.f i_us i_uk infl_us infl_uk
test _cons=0 
test l1.f=1
test (_cons = 0)(l1.f = 1)
estat bgodfrey, lags(4) 
//2c
gen s_l=log(s)
reg s_l
//alternatively//
dfuller s, lag(4) trend regress
//2d
gen diffs = f.s-s 
gen diffs1 = s-L1.s
gen diffs2 = d.s
gen diffr = i_us - i_uk
reg diffs diffr

test _cons=0
test diffr=1
test (_cons=0)(diffr=1)
estat bgodfrey, lags(4) 

cap log close
clear
exit
