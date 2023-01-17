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

history= pd.read_csv("../../ideal/GRADIENT/DENSITY/history_2nd.csv", ",", skiprows=0)


fig1 = plt.figure( dpi=300)
axes = fig1.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(history.iloc[:,2] , history.iloc[:,3] , 'k', lw=2, label="$\\rho$")
axes.plot(history.iloc[:,2] , history.iloc[:,4] , 'r', lw=2, label="$\\rho u$")
axes.plot(history.iloc[:,2] , history.iloc[:,5] , 'g', lw=2, label="$\\rho v$")
axes.plot(history.iloc[:,2] , history.iloc[:,6] , 'b', lw=2, label="$\\rho e$")




axes.set_xlabel('Number of iteration',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('Residuals',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('Residuals of primitive variables',fontsize=14)

axes.legend(loc=0 , prop={'size': 7}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("residuals.pdf")
