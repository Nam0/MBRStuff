import time
import pytesseract
import win32gui
import win32process
from PIL import ImageGrab

# Define the process name to search for
process_name = "AutoIt3.exe"

# Get a list of all top-level windows
def winEnumHandler(hwnd, ctx):
    if win32gui.IsWindowVisible(hwnd):
        if process_name in win32gui.GetWindowText(hwnd):
            windows.append(hwnd)

windows = []
win32gui.EnumWindows(winEnumHandler, None)

# Loop through each window and capture the screen
for i, hwnd in enumerate(windows):
    print(f"Capturing {process_name} window {i+1}...")
    rect = win32gui.GetWindowRect(hwnd)
    coords = (rect[2]-600, rect[3]-400, rect[2], rect[3])

    # Capture the screen of the window
    im = ImageGrab.grab(bbox=coords)

    # Crop the image to the desired area
    im = im.crop((290, 454, 457, 650))

    # Convert the image to grayscale and perform thresholding
    im = im.convert("L")
    im = im.point(lambda x: 0 if x < 200 else 255)

    # Perform OCR using pytesseract
    text = pytesseract.image_to_string(im)

    # Print the recognized text
    print(f"{process_name} window {i+1}: {text}")
