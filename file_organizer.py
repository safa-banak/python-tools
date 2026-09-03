import os
import shutil

folder = input("Enter folder path to organize: ")
if not os.path.exists(folder):
    print("Folder not found.")
else:
    for filename in os.listdir(folder):
        file_path = os.path.join(folder, filename)
        if os.path.isfile(file_path):
            ext = filename.split(".")[-1].lower()
            ext_folder = os.path.join(folder, ext + "_files")
            os.makedirs(ext_folder, exist_ok=True)
            shutil.move(file_path, os.path.join(ext_folder, filename))
    print("Files organized successfully.")
