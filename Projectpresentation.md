Creating a Shiny App to calculate GFR
========================================================
author: Denes Csonka 
date: 24 Nov 2014
transition: fade

What is GFR? How is it calculated?
========================================================

Glomerular Filtration Rate is a measure of the kidney function

- There are several empirical formulas to calculate it 
- Generally these formulas use the serum creatinine values
- They also take into account other factors as age, gender and sex

The MDRD formula
========================================================

The formula was developed based on the results of a large clinical trial called

Modification of Diet in Renal Disease

This is also an empirical formula, which is the following:

GFR = 175 x SerumCr^-1.154 * age^-0.203 * 1.212 (if patient is black) * 0.742 (if female)

How did I code this formula in R?
========================================================

Coded in R:

```r
female<-FALSE
crea<-1
age<-35
black<-TRUE
gfr<-as.numeric(175 * (crea)^-1.154 * (age)^-0.203 * (1+0.212*as.numeric(black)) * (1-0.258*as.numeric(female)))
print(gfr)
```

```
[1] 103.1
```

Why is this important?
======

Calculating GFR helps to establish the renal function of severely ill patients

Lets the pharmacists/physicians to adjust the dose of some medications if needed

