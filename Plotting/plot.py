import serial
import numpy
from matplotlib import pyplot as plt
ser = serial.Serial('/dev/ttyUSB0', 9600)
 
plt.ion() # set plot to animated
 
# make plot
line, = plt.plot([], [], 'ro')
plt.ylim([0,300])
plt.xlim([0,300])
 
# start data collection
while True:  
    chr = ser.read()						              # read data from serial 
    if (ord(chr) == 0):
        line.set_xdata(numpy.append(line.get_xdata(),ord(ser.read())))
        line.set_ydata(numpy.append(line.get_ydata(),ord(ser.read())))
        plt.draw()

