import serial
import numpy
from matplotlib import pyplot as plt
ser = serial.Serial('/dev/ttyUSB0', 9600)
 
plt.ion() # set plot to animated
 
ydata = [0]*1000

# make plot
line, = plt.plot(ydata)
plt.ylim([0,255])
 
# start data collection
while True:
    ser.flushInput()
    data = ser.read(size=1)
    ydata.append(ord(data))
    del ydata[0]
    print ord(data)
    line.set_xdata(numpy.arange(len(ydata)))
    line.set_ydata(ydata)
    plt.draw()
