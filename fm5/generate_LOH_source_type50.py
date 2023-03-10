#!/usr/bin/env python3

fout=open('LOH1_source_50.dat', 'w')

# Note that we use a moment tensor definition that differs with the standards in Seismology (e.g. Komatitsch and Tromp, 1999).
# the moment tensor is opposite to the usual definition

# Note that strike, dip and rake allow rotating the seismic moment tensor. 
# Typically, the moment tensor does not need to be rotated and strike = dip = rake = 0.

header=\
""" seismic moment tensor
 1.00000E+00 0.00000E+00 0.00000E+00
 0.00000E+00 1.00000E+00 0.00000E+00
 0.00000E+00 0.00000E+00 1.00000E+00
 number of faults
                     1
 x,y,z,strike, dip, rake, area, onset time.
     0.00000     0.00000     0.00000     0.00000    0.00000     0.00000  1.0     0.00000
 source time function: dela, total sample point
     0.00020                  40000
 samples
"""
fout.write(header)

import numpy as np

#Now write the moment rate:
fm=5
dt=0.0002
vtime = np.arange(0, 8, dt)
momentRate = (1-2*np.pi*np.pi*fm*fm*(vtime-0.24)*(vtime-0.24))*np.exp(-fm*fm*np.pi*np.pi*(vtime-0.24)*(vtime-0.24))

#check that integral is 1
#print(np.trapz(momentRate, vtime))

np.savetxt(fout, momentRate, fmt='%.18e')
fout.close()
print('done writing LOH1_source_50.dat')


