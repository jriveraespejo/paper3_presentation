# preliminar ####
rm(list=ls()); gc(); old_par=par()

## packages ####
# linux: sudo apt-get install -y libmagick++-dev
# R: install.packages('magick')
librerias = c('magick','tidyverse')
sapply(librerias, require, character.only=T)

## dir ####
dir = '/home/josema/Desktop/1. Work/1 research/PhD Antwerp/#thesis/paper3/paper3_presentation/figures'


# Cropping images ####

## CBTL analysis ####

filenames = list.files( path=file.path(dir, 'CBTL_analysis', 'cropped'), full.names=T)

idx = str_detect(filenames, 'influential')

for( f in filenames[!idx] ){
  img = image_read( path=f )
  img = image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
                    image=img )
  image_write( img, path=f )
}

for( f in filenames[idx] ){
  img = image_read( path=f )
  img = image_crop( geometry=geometry_area(width=1770, height=1350, x_off=140, y_off=180),
                    image=img )
  image_write( img, path=f )
}


# # manual
# img_name = '3_2_CBTL_individual_influential.png'
# img_dir = file.path(dir, 'CBTL_analysis', img_name)
# img = image_read( path=img_dir )
# 
# print(img)
# image_crop( geometry=geometry_area(width=1770, height=1350, x_off=140, y_off=180),
#             image=img )


