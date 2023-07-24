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

GPIO.setmode(GPIO.BCM)

GPIO.setup(17, GPIO.OUT)
GPIO.output(17, GPIO.HIGH)

time.sleep(3)

GPIO.output(17, GPIO.LOW)

time.sleep(3)
GPIO.cleanup()

