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

refer= pd.read_csv("../../../../nonideal/nn/reference/radial.csv", ",", skiprows=0)
gd= pd.read_csv("../../../../nonideal/nn/hessian/d/radial.csv", ",", skiprows=0)
gm= pd.read_csv("../../../../nonideal/nn/hessian/m/radial.csv", ",", skiprows=0)
gp= pd.read_csv("../../../../nonideal/nn/hessian/p/radial.csv", ",", skiprows=0)
gt= pd.read_csv("../../../../nonideal/nn/hessian/t/radial.csv", ",", skiprows=0)


fig1 = plt.figure( dpi=300)
lwh = 2
axes = fig1.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(refer.iloc[:,7] , refer.iloc[:,0]/refer.iloc[0,0], 'k', lw=lwh, label="reference")
axes.plot(gd.iloc[:,7] , gd.iloc[:,0]/refer.iloc[0,0] , 'r', lw=lwh,  label="$H(\\rho)$")
axes.plot(gm.iloc[:,7] , gm.iloc[:,0]/refer.iloc[0,0] , 'b', lw=lwh,  label="$H(M)$")
axes.plot(gp.iloc[:,7] , gp.iloc[:,0]/refer.iloc[0,0] , 'k--', lw=lwh,  label="$H(P)$")
axes.plot(gt.iloc[:,7] , gt.iloc[:,0]/refer.iloc[0,0]*11.2675 , 'r--', lw=lwh,  label="$H(T)$")


axes.set_xlabel('$Y[mm]$',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('$\\rho/\\rho_t$',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('$\\rho/\\rho_t$ at $X=10[mm]$',fontsize=14)

axes.legend(loc=0 , prop={'size': 10}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("refer_nn_hes_rho.pdf")

fig2 = plt.figure( dpi=300)
lwh = 2
axes = fig2.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(refer.iloc[:,7] , refer.iloc[:,1] , 'k', lw=lwh, label="reference")
axes.plot(gd.iloc[:,7] , gd.iloc[:,1], 'r', lw=lwh,  label="$H(\\rho)$")
axes.plot(gm.iloc[:,7] , gm.iloc[:,1], 'b', lw=lwh,  label="$H(M)$")
axes.plot(gp.iloc[:,7] , gp.iloc[:,1], 'k--', lw=lwh,  label="$H(P)$")
axes.plot(gt.iloc[:,7] , gt.iloc[:,1] , 'r--', lw=lwh,  label="$H(T)$")

axes.set_xlabel('$Y[mm]$',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('Mach',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('Mach at $X=10[mm]$',fontsize=14)

axes.legend(loc=0 , prop={'size': 10}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("refer_nn_hes_m.pdf")

fig3 = plt.figure( dpi=300)
lwh = 2
axes = fig3.add_axes([0.15, 0.15, 0.7, 0.7]) #size of figure
axes.plot(refer.iloc[:,7] , refer.iloc[:,3]/refer.iloc[0,3] , 'k', lw=lwh, label="reference")
axes.plot(gd.iloc[:,7] , gd.iloc[:,3]/refer.iloc[0,3] , 'r', lw=lwh,  label="$H(\\rho)$")
axes.plot(gm.iloc[:,7] , gm.iloc[:,3]/refer.iloc[0,3] , 'b', lw=lwh,  label="$H(M)$")
axes.plot(gp.iloc[:,7] , gp.iloc[:,3]/refer.iloc[0,3] , 'k--', lw=lwh,  label="$H(P)$")
axes.plot(gt.iloc[:,7] , gt.iloc[:,3]/refer.iloc[0,3]*300 , 'r--', lw=lwh,  label="$H(T)$")

axes.set_xlabel('$Y[mm]$',fontsize=12)
#axes.set_yscale("log")
axes.set_ylabel('$T/T_t$',fontsize=12) 
# axes.set_aspect('equal', 'box')
axes.set_title('$T/T_t$ at $X=10[mm]$',fontsize=14)

axes.legend(loc=0 , prop={'size': 10}) # 
# axes.set_xlim(0,0.12)
# axes.set_ylim(0.2,1)
#axes.legend(loc=2) # 2 means left top
fig1.savefig("refer_nn_hes_t.pdf")
