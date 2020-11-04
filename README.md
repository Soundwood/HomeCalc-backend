# To-Do

set up databases
    table scenario
    columns:
        net gross household income
        income after tax
        monthly recurring debt
        credit score:   great - 720-850
                        good - 690-719
                        fair - 630-689
                        poor - 300-629
        downpayment
        state
        city
    
    table property tax rates
    columns:
        state: TX (two char state code)
        rate: decimal rate

    table interest rates
    columns:
        credit score
        length of loan
        interest rate

M = P[r(1+r)^n/((1+r)^n)-1)]
M= the total monthly mortgage payment.
P= the principal loan amount.
r= your monthly interest rate (3%/12=.0025)
n= number of payments over the loan’s lifetime (30yr = 360)

assuming Conventional fixed rate mortgage w/ great credit
30-year fixed	2.875%
20-year fixed	2.875%
15-year fixed	2.375%
10-year fixed	2.375%