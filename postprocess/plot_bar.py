#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Dec 12 13:35:29 2022
@author: yan
"""

import numpy as np
import pandas as pd
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter
import os
from IPython import get_ipython;   
get_ipython().magic('reset -sf')
os.system('clear')
x1 = [0,10]
y1 = [0,0]







# fig 1
fig1 = plt.figure( dpi=300)
lwh = 2
axes = fig1.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(x1, y1,'k', lw=lwh)

plt.bar(9.5, 0.5, color ='orange', width = 1)
plt.bar(8.5, 0.5, color ='y', width = 1)
plt.bar(7.5, 0.5, color ='purple', width = 1)
plt.bar(2.5, -0.5, color ='blue', width = 1)
plt.bar(1.5, -0.5, color ='maroon', width = 1)
plt.bar(0.5, -0.5, color ='green', width = 1)


# axes.set_xlabel('error',fontsize=12)
axes.set_xticks([])
axes.set_yticks([])
# axes.set_ylabel('$$',fontsize=12) 
axes.set_title('Refinement and coarsening threshold',fontsize=14)

axes.set_xticks([0.5,1.5,2.5,7.5,8.5,9.5])
axes.set_xticklabels([r'$\tau_{C3}$',r'$\tau_{C2}$', r'$\tau_{C1}$',
                      r'$\tau_{R3}$',r'$\tau_{R2}$', r'$\tau_{R1}$'], fontsize=12)
# axes.legend(loc=1) # 

fig1.savefig("threshold.pdf")
