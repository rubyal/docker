import os 

from lib import logger as log


logger = log.get_logger()

a = os.getenv('COMMAND_A')
b = os.getenv('COMMAND_B')


def sumar(a,b):
    
    c = int(a)+int(b)
    return c 

print("somos los mejores")
suma=sumar(a,b)
print(suma)
