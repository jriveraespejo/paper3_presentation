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





## ITCJ analysis ####

filenames = list.files( path=file.path(dir, 'ITCJ_analysis', 'cropped'), full.names=T)

idx1 = str_detect(filenames, 'influential')
idx2 = str_detect(filenames, '5_ITCJ_model_comparison')

for( f in filenames[!(idx1 | idx2)] ){
  img = image_read( path=f )
  img = image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
                    image=img )
  image_write( img, path=f )
}

for( f in filenames[idx1] ){
  img = image_read( path=f )
  img = image_crop( geometry=geometry_area(width=1770, height=1350, x_off=140, y_off=180),
                    image=img )
  image_write( img, path=f )
}

for( f in filenames[idx2] ){
  img = image_read( path=f )
  img = image_crop( geometry=geometry_area(width=1900, height=1000, x_off=0, y_off=140),
                    image=img )
  image_write( img, path=f )
}



## manual ####
idx = str_detect(filenames, '5_ITCJ_model_comparison')
img = image_read( path=filenames[idx] )
print(img)
image_crop( geometry=geometry_area(width=1900, height=600, x_off=0, y_off=140),
            image=img )


