# Determining-Real-Exchange-Rate-
This is a tutorial on how to Calculate Real Exchange Rate in Stata

The Real Excahnge Rate is Determined from the norminal excange rate, by adjusting for relative consumer prices

This indicator is measured as a percentage deviation fro its trend

The illustration is made in ference to the following article: https://www.researchgate.net/publication/256667285_Assessing_Indicators_of_Currency_Crisis_in_Ethiopia_Signals_Approach 

The data used in this study was gathered from the IMF’s International Financial Statistics (IFS)

![Screenshot_11](https://user-images.githubusercontent.com/74916045/183048788-c882460e-ff64-411b-b657-85a91a50b958.png)

## Stata Codes Used 
    import excel "C:\Users\sam\Desktop\REER.xlsx", sheet("Sheet1") firstrow
    gen Time=_n  
    regress REER Time
    predict Trend
    gen REER_Adj = ((REER-Trend)/Trend)*100
    twoway (line REER Time) (line Trend Time)
    
    
Files in the Analysis 
