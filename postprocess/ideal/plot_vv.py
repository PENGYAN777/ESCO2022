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


gd= pd.read_csv("../../ideal/ANISOTROPIC/d/axis.csv", ",", skiprows=0)
paper= pd.read_csv("paper_P.csv", ",", skiprows=0)



fig1 = plt.figure( dpi=300)
lwh = 2
axes = fig1.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(gd.iloc[:,6] , gd.iloc[:,2]/gd.iloc[0,2] , 'r', lw=lwh, label="aniso $\\rho$")
axes.plot(paper.iloc[:,0]*6.5 , paper.iloc[:,1]/paper.iloc[0,1] , 'k', lw=lwh, label="Guardone 2007")
# 




axes.set_xlabel('$X[mm]$',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('$P/P_t$',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('$P/P_t$ along symmetry axis',fontsize=14)

axes.legend(loc=0 , prop={'size': 10}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("vv.pdf")
