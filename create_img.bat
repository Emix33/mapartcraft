del /S /Q img
rmdir /S /Q img
mkdir img
mkdir temp
magick mogrify -filter point -resize 32x32 -path ./temp ./img_original/*.png
magick montage -background None -geometry +0+0 temp/*.png img/blocks.png
rem Must be ran with Python3
python create_css.py
del /S /Q temp
rmdir /S /Q temp
robocopy img_original\custom\ img\ /s /e