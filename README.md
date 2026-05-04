This GitHub repository contains the various code (Python, Image J Macros, R) used in my PhD Thesis
A description of each file follows 

Image J macros - a variety of ImageJ macros were used for the bulk processing of images 

  Pull out the red channel and save - this was used to isolate the red channel from the RGB images 
  tiling - this was used to tile the images for processing 
  tiling_folder_save - this is a bulk processing of the above macros that could be used to process folders of images 
  make_montage_from_folder_of_folders - this is the opposite of the above code to restitch the montaged images after restoration 

  flip_rotate_save_repeat - this was used during training data generation to sequentially transform each pair of training images 

The code for CARE and StarDist was run in Python through Jupyter labs on a local workstation 

  The device specs show versions of NVIDIA, CUDA, CuDNN, and GPU used 

  CARE.yml - this details the environment and appropriate dependencies to run the CARE code
  CARE step one - This file contains the code (and output) used to generate the training data for training of the CARE model 
  CARE step two - This file contains the code (and output) showing the model training 
  CARE step three - This file shows the code used to apply the model trained in step two to the target images 

  StarDist.yml - this details the environment and appropriate dependencies to run StarDist
  StarDist step one - This file contains the code (and output) used to screen the training data for StarDist
  StarDist step two - This file contains the code (and output) showing the model training 
  StarDist step three - This file shows the code used to apply the model trained in step two to the target images 

R Code was used for the visualisation of the DEG analysis and to run the WGCNA 

  DEG heatmap - visualisation of 236 DEGs 
  WGCNA R Code - full code for data organisation, running of WGCNA, organisation of results and data visualisation 
