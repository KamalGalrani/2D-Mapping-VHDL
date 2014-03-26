import serial
import numpy
from matplotlib import pyplot as plt
mapper = serial.Serial('/dev/ttyUSB0', 9600)
 
plt.ion() # set plot to animated
 
# make plot
line, = plt.plot([], [], 'ro')
plt.ylim([0,300])
plt.xlim([0,300])

# start data collection
while True:
    if (mapper.inWaiting() > 10):
        mapper.flushInput()
    data = ord(mapper.read())
    data = ord(mapper.read())*256 + ord(mapper.read())
    if (data == 0):
        data = ord(mapper.read())
        data = ord(mapper.read())*256 + ord(mapper.read())
        line.set_xdata(numpy.append(line.get_xdata(),data))
        data = ord(mapper.read())
        data = ord(mapper.read())*256 + ord(mapper.read())
        line.set_ydata(numpy.append(line.get_ydata(),data))
        plt.draw()
