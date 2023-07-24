"""
To access remotely :
Search PuTTY on Windows
Open
Enter the ip address of the Raspberry pi
In Cmd
Username : pi
Password : raspberry
locate file
run using "Python3 file_name"
"""
import RPi.GPIO as GPIO
import time
# Set the GPIO mode to BCM
GPIO.setmode(GPIO.BCM)
# Set up GPIO pin 17 as an output pin
led_pin = 17
GPIO.setup(led_pin, GPIO.OUT)
try:
  while True:
    # Turn on the LED
    GPIO.output(led_pin, GPIO.HIGH)
    time.sleep(1) # Wait for 1 second
    # Turn off the LED
    GPIO.output(led_pin, GPIO.LOW)
    time.sleep(1) # Wait for 1 second
except KeyboardInterrupt:
  # Clean up GPIO configuration on keyboard interrupt (Ctrl+C)
  GPIO.cleanup() 
