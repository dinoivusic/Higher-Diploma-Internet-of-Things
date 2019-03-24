import requests
from grovepi import *
import time

dweetIO = "https://dweet.io:443/dweet/for/ZgloPi"
myName = "ZgloPi"
myKey = "Temp_Hum"

port = 7

while True:
    [temp, hum] = dht (port, 0)
    rqsString = dweetIO+' ' + myName+'?'+myKey+'='+str(temp)+str(hum)
    rqs = requests.post(rqsString)
    time.sleep(2)