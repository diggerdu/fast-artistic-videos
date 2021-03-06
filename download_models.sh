#!/bin/bash
BASE_URL="http://cs.stanford.edu/people/jcjohns/fast-neural-style/models/"

mkdir -p models

cd models
#Download style model
curl -O "$BASE_URL/eccv16/the_wave.t7"
curl -O "$BASE_URL/eccv16/starry_night.t7"
curl -O "$BASE_URL/eccv16/la_muse.t7"
curl -O "$BASE_URL/eccv16/composition_vii.t7"

#Download VGG-19
wget -c https://gist.githubusercontent.com/ksimonyan/3785162f95cd2d5fee77/raw/bb2b4fe0a9bb0669211cf3d0bc949dfdda173e9e/VGG_ILSVRC_19_layers_deploy.prototxt
wget -c --no-check-certificate https://bethgelab.org/media/uploads/deeptextures/vgg_normalised.caffemodel
wget -c http://www.robots.ox.ac.uk/~vgg/software/very_deep/caffe/VGG_ILSVRC_19_layers.caffemodel
cd ..