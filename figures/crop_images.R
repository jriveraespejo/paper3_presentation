# preliminar ####
rm(list=ls()); gc(); old_par=par()

## packages ####
# linux: sudo apt-get install -y libmagick++-dev
# R: install.packages('magick')
require(magick)

## dir ####
dir = '/home/josema/Desktop/1. Work/1 research/PhD Antwerp/#thesis/paper3/paper3_presentation/figures'


# Cropping images ####

## 3_2_CBTL_stimuli_trait_comparison_plot1_2 ####
img_name = '3_2_CBTL_stimuli_trait_comparison_plot1_2.png'
img_dir = file.path(dir, 'CBTL_analysis', img_name)
img = image_read( path=img_dir )

print(img)
image_info(img)
image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
            image=img )

img = image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
                  image=img )
image_write( img, path=img_dir )




## 3_1_CBTL_judge_trait_prior1 ####
img_name = '3_1_CBTL_judge_trait_prior1.png'
img_dir = file.path(dir, 'CBTL_analysis', img_name)
img = image_read( path=img_dir )

print(img)
image_info(img)
image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
            image=img )

img = image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
                  image=img )
image_write( img, path=img_dir )





## 3_1_CBTL_stimuli_trait_prior2 ####
img_name = '3_1_CBTL_stimuli_trait_prior2.png'
img_dir = file.path(dir, 'CBTL_analysis', img_name)
img = image_read( path=img_dir )

print(img)
image_info(img)
image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
            image=img )

img = image_crop( geometry=geometry_area(width=1830, height=1000, x_off=70, y_off=130),
                  image=img )
image_write( img, path=img_dir )
