# DM-CNN: Dark Matter - Liquid Argon Interaction Classifier

Convolutional neural network aimed to discriminate dark matter interactions with liquid argon (dark trident scattering) from 
neutrino interactions and from cosmic-ray muons. DM-CNN repurposes the MPID package to 
train a binary classifier. Analogously to MPID, this network receives 512x512 LArTPC images. The CNN returns the probability
of the image containing either a dark trident interaction or a background interaction. 


<img src="https://github.com/lmlepin9/DM-CNN/blob/master/lib/run1_NuMI_beamon_larcv_cropped_ENTRY_4204_colorbar_logit.png" width="500">

# Dependecies:
[LArCV2](https://github.com/LArbys/LArCV),
ROOT,
PyTorch

# Singularity container:

MPID was originally built using python 2.7 and PyTorch (V1.0.1). All the dependencies 
have been setup by Rui An within a singularity container.

Container link: TBD 

# Setup:
0. Download the container 
1. Clone this repo 
2. Initialize the singularity container with 
3. Setup dependencies and MPID core: source setup_larcv2_dm.sh 

# Training:
0. Declare training parameters and paths in ./cfg/training_config.cfg 
2. python ./uboone/train_DM-CNN.py 

# Inference:
0. Declare paths in ./cfg/inference_config_binary.cfg 
1. python ./uboone/inference_DM-CNN.py

# Event display: 

We can also use the LArCV tools to create event displays 
of the images we feed to the CNN. 

# Occlusion analysis:
1.- python ./uboone/occlusion_analysis_CNN.py 

