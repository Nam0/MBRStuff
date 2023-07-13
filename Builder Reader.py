import time
import psutil
import pytesseract
from PIL import ImageGrab

# Define the process name to search for
process_name = "AutoIt3.exe"

# Get a list of all running processes with the given name
processes = [p for p in psutil.process_iter(attrs=['name']) if p.info['name'] == process_name]

# Loop through each process and capture the screen
for i, proc in enumerate(processes):
    print(f"Capturing {process_name} process {i+1}...")
    pid = proc.pid
    hwnds = [hwnd for hwnd in proc.wait(1).hwnds if hwnd] # get list of all process windows
    hwnd = hwnds[-1] # choose the last window
    rect = psutil.Process(pid).as_dict(attrs=['pid', 'name', 'create_time', 'cpu_percent', 'cpu_times', 'memory_info', 'status', 'username']).get('memory_info').get('vms')
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
    print(f"{process_name} process {i+1}: {text}")
