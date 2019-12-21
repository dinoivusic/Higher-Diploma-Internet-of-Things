from twilio.rest import Client
from w1thermsensor import W1ThermSensor
from time import sleep

#  Account SID from twilio
account_sid ='ACf9d57261efd7a78850bf7c956f2e9aa7' #  Twilio account SID here
# Auth Token from twilio
auth_token ='04afadfff92823f9c5aace948fe381af' # The auth token here

client = Client(account_sid, auth_token)

sensor = W1ThermSensor()
high = 27
low = 21

while True:
    temperature = sensor.get_temperature()
    print('Current temperature: ' + str(temperature))
    if temperature > high:
        client.messages.create(
          to='+353834600258', # My mobile phone number here
          from_='+(480) 725-1378', #My Twilio number here
          body="Hey Hey Hey, the temperature is getting too high and the fish could boil."
        )
    elif temperature < low:
        client.messages.create(
          to='+353834600258', # My mobile phone number here
          from_='+(480) 725-1378', # My Twilio number here
          body="Woooh, the temperature is getting too low and the fish might turn into ice cube."
        )
    else:
        print('That is good')
    sleep(1800)