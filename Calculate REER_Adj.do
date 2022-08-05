import excel "C:\Users\sam\Desktop\REER.xlsx", sheet("Sheet1") firstrow
gen Time=_n
regress REER Time
predict Trend
gen REER_Adj = ((REER-Trend)/Trend)*100
twoway (line REER Time) (line Trend Time)
