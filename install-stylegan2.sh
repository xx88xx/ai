#!/bin/bash
# all.sh

#install some libraries
pip install gdown

#install dataset-tools
git clone https://github.com/dvschultz/dataset-tools
pip install --user -r dataset-tools/requirements.txt

#set up stylegan2 repos
mkdir dvschultz-stylegan2
mkdir skyflynil-stylegan2
mkdir pbaylies-stylegan2

#install dvschultz
cd dvschultz-stylegan2
git clone https://github.com/dvschultz/stylegan2
cd stylegan2
mkdir pkl
cd pkl
gdown --id 1JLqXE5bGZnlu2BkbLPD5_ZxoO3Nz-AvF #inception: https://drive.google.com/open?id=1JLqXE5bGZnlu2BkbLPD5_ZxoO3Nz-AvF
cd ../
mkdir results
mkdir results/00000-pretrained
cd results/00000-pretrained
gdown --id 1UlDmJVLLnBD9SnLSMXeiZRO6g-OMQCA_
mv stylegan2-ffhq-config-f.pkl network-snapshot-10000.pkl
cd ../../
mkdir datasets
cd ../../

#install skyflynil
cd mkdir skyflynil-stylegan2
git clone https://github.com/skyflynil/stylegan2
cd stylegan2
mkdir pkl
cd pkl
gdown --id 1JLqXE5bGZnlu2BkbLPD5_ZxoO3Nz-AvF #inception: https://drive.google.com/open?id=1JLqXE5bGZnlu2BkbLPD5_ZxoO3Nz-AvF
cd ../
mkdir results
mkdir results/00000-pretrained
cd results/00000-pretrained
gdown --id 1UlDmJVLLnBD9SnLSMXeiZRO6g-OMQCA_
mv stylegan2-ffhq-config-f.pkl network-snapshot-10000.pkl
cd ../../
mkdir datasets
cd ../../