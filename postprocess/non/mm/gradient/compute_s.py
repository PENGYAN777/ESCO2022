#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Nov 27 19:10:17 2022

@author: P.Yan

read csv file with P,T, compute Z, Gamma and wirte in thee csv file
"""

import numpy as np
import CoolProp as CP
import pandas as pd

fluidname = "MM"
# data = pd.read_csv("m4.csv", ",")
data = pd.read_csv("radial.csv", ",")
# get P,T from 2nd and 3rd column 
P = data.iloc[:,2] 
T = data.iloc[:,3] 
print("size", P.index)

d = np.zeros(P.size)
for i in P.index:
    d[i] =  CP.CoolProp.PropsSI('Dmass','T',T[i],'P|gas',P[i],"PR::MM")

    
# append new columns
d =pd.DataFrame({'density': d })
newData = pd.concat([data, d], join = 'outer', axis = 1)
# save newData in csv file
# newData.to_csv("m4sh.csv")
newData.to_csv("refer_radial.csv")
