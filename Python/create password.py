import random
import string

def password_generator():
    password = ''
    for i in range(0,32):
        password = ''.join(random.choices(string.ascii_uppercase + string.digits + string.punctuation, k=i))
    
    return password

print(password_generator())