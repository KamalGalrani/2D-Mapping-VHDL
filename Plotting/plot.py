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
    data = ser.readline().rstrip() # read data from serial 
                                   # port and strip line endings
    coordinates = data.split(",")
    line.set_xdata(numpy.append(line.get_xdata(),coordinates[0]))
    line.set_ydata(numpy.append(line.get_ydata(),coordinates[1]))
    plt.draw()

