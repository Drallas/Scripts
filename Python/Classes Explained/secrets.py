# Testing how to print a secret from Replit secrets
import os

def secrets():
    print(f"Secret: {os.getenv('MY_TEST')}.")
