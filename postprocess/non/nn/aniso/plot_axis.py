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

refer= pd.read_csv("../../../../nonideal/nn/reference/axis.csv", ",", skiprows=0)
gd= pd.read_csv("../../../../nonideal/nn/aniso/d/axis.csv", ",", skiprows=0)
gm= pd.read_csv("../../../../nonideal/nn/aniso/m/axis.csv", ",", skiprows=0)
gp= pd.read_csv("../../../../nonideal/nn/aniso/p/axis.csv", ",", skiprows=0)
gt= pd.read_csv("../../../../nonideal/nn/aniso/t/axis.csv", ",", skiprows=0)
ge= pd.read_csv("../../../../nonideal/nn/aniso/e/axis.csv", ",", skiprows=0)



fig1 = plt.figure( dpi=300)
lwh = 2
axes = fig1.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(refer.iloc[:,6] , refer.iloc[:,2]/refer.iloc[0,2] , 'k', lw=lwh, label="reference")
axes.plot(gd.iloc[:,6] , gd.iloc[:,2]/gd.iloc[0,2] , 'r', lw=lwh, label="aniso $\\rho$")
axes.plot(gm.iloc[:,6] , gm.iloc[:,2]/gm.iloc[0,2] , 'b', lw=lwh, label="aniso $M$")
axes.plot(gp.iloc[:,6] , gp.iloc[:,2]/gp.iloc[0,2] , 'k--', lw=lwh, label="aniso $P$")
axes.plot(gt.iloc[:,6] , gt.iloc[:,2]/gt.iloc[0,2] , 'r--', lw=lwh, label="aniso $T$")
axes.plot(ge.iloc[:,6] , ge.iloc[:,2]/ge.iloc[0,2] , 'b--', lw=lwh, label="aniso $s$")





axes.set_xlabel('$X[mm]$',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('$P/P_t$',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('$P/P_t$ along symmetry axis',fontsize=14)

axes.legend(loc=0 , prop={'size': 10}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("refer_nn_aniso_p.pdf")
