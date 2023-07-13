import time
import pytesseract
import pygetwindow as gw
from PIL import ImageGrab

# Define the process name to search for
process_name = "AutoIt3.exe"

# Get a list of all windows with the given process name
windows = gw.getWindowsWithTitle(process_name)
	
# Loop through each window and capture the screen
for i, window in enumerate(windows):
	print(f"Capturing {process_name} window {i+1}...")
	rect = window.bottomRightCorner
	coords = (rect[0]-600, rect[1]-400, rect[0], rect[1])

	# Capture the screen of the window
	im = ImageGrab.grab(bbox=coords)

	# Crop the image to the desired area
	im = im.crop((290, 454, 457, 650))

	# Convert the image to grayscale and perform thresholding
	#im = im.convert("L")
	#im = im.point(lambda x: 0 if x < 200 else 255)

	# Perform OCR using pytesseract
	text = pytesseract.image_to_string(im)

	# Print the recognized text
	print(f"{process_name} window {i+1}: {text}")
