### This file is just to practice the rough work and functionalities regarding this proect.

import os
import imghdr
from PIL import Image

x=imghdr.what("input_images//bad_data//522.jpg")
print(type(x))
print(x)

img=Image.open("input_images//bad_data//522.jpg")
print(img.format)
