#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Dec 16 19:20:51 2022

@author: yan
"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter

n0= pd.read_csv("../../ideal/GRADIENT/DENSITY/n0.csv", ",", skiprows=0)
n4= pd.read_csv("../../ideal/GRADIENT/DENSITY/n4.csv", ",", skiprows=0)
n6= pd.read_csv("../../ideal/GRADIENT/DENSITY/n6.csv", ",", skiprows=0)
n8= pd.read_csv("../../ideal/GRADIENT/DENSITY/n8.csv", ",", skiprows=0)
n10= pd.read_csv("../../ideal/GRADIENT/DENSITY/n10.csv", ",", skiprows=0)


fig1 = plt.figure( dpi=300)
axes = fig1.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(n0.iloc[:,1]/6.5 , n0.iloc[:,0] , 'k', lw=2, label="$n=0$")
axes.plot(n4.iloc[:,1]/6.5 , n4.iloc[:,0] , 'g', lw=2, label="$n=4$")
axes.plot(n6.iloc[:,1]/6.5 , n6.iloc[:,0] , 'b', lw=2, label="$n=6$")
axes.plot(n8.iloc[:,1]/6.5 , n8.iloc[:,0] , 'y', lw=2, label="$n=8$")
axes.plot(n10.iloc[:,1]/6.5 , n10.iloc[:,0] , 'r', lw=2, label="$n=10$")





axes.set_xlabel('$X/D$',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('$P/P_t$',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('$P/P_t$ along symmetry axis',fontsize=14)

axes.legend(loc=0 , prop={'size': 10}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("convergence.pdf")
