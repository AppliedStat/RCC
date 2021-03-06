
library(rQCC)
 x1 = c(74.030, 74.002, 74.019, 73.992, 74.008)
 x2 = c(73.995, 73.992, 74.001)
 x3 = c(73.988, 74.024, 74.021, 74.005, 74.002)
 x4 = c(74.002, 73.996, 73.993, 74.015, 74.009)
 x5 = c(73.992, 74.007, 74.015, 73.989, 74.014)
 x6 = c(74.009, 73.994, 73.997, 73.985)
 x7 = c(73.995, 74.006, 73.994, 74.000)
 x8 = c(73.985, 74.003, 73.993, 74.015, 73.988)
 x9 = c(74.008, 73.995, 74.009, 74.005)
x10 = c(73.998, 74.000, 73.990, 74.007, 73.995)
x11 = c(73.994, 73.998, 73.994, 73.995, 73.990)
x12 = c(74.004, 74.000, 74.007, 74.000, 73.996)
x13 = c(73.983, 74.002, 73.998) 
x14 = c(74.006, 73.967, 73.994, 74.000, 73.984)
x15 = c(74.012, 74.014, 73.998) 
x16 = c(74.000, 73.984, 74.005, 73.998, 73.996)
x17 = c(73.994, 74.012, 73.986, 74.005) 
x18 = c(74.006, 74.010, 74.018, 74.003, 74.000)
x19 = c(73.984, 74.002, 74.003, 74.005, 73.997)
x20 = c(74.000, 74.010, 74.013) 
x21 = c(73.982, 74.001, 74.015, 74.005, 73.996)
x22 = c(74.004, 73.999, 73.990, 74.006, 74.009)
x23 = c(74.010, 73.989, 73.990, 74.009, 74.014)
x24 = c(74.015, 74.008, 73.993, 74.000, 74.010)
x25 = c(73.982, 73.984, 73.995, 74.017, 74.013) 

# For unbalanced data set, use list.
data = list(x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, 
           x16, x17, x18, x19, x20, x21, x22, x23, x24, x25)
# ===================================================
m   = length(data)
ni0 = sapply(data, length) 
nk = 5
# ===================================================


rcc(data, location="mean",   scale="sd",    type="Xbar", poolLoc="C", poolScale="C", nk=5)
rcc(data, location="median", scale="mad",   type="Xbar", poolLoc="C", poolScale="C", nk=5)
rcc(data, location="HL1",    scale="shamos",type="Xbar", poolLoc="C", poolScale="C", nk=5)

