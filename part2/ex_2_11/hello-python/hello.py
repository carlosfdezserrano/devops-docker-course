import time
import os

sample = os.environ["SAMPLE"]

while True:
    print("hello")
    print(f"Env value: {sample}")
    time.sleep(1)