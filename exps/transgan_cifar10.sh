#!/usr/bin/env bash

python train.py \
-gen_bs 128 \
-dis_bs 64 \
--dataset cifar10 \
--bottom_width 4 \
--img_size 32 \
--max_iter 50000 \
--gen_model TransGAN_CIFAR \
--dis_model ViT_8_8 \
--df_dim 384 \
--gf_dim 1024 \
--d_depth 7 \
--g_depth 5 \
--latent_dim 128 \
--g_spectral_norm False \
--d_spectral_norm True \
--g_lr 0.0002 \
--d_lr 0.0002 \
--beta1 0.0 \
--beta2 0.9 \
--init_type xavier_uniform \
--n_critic 5 \
--val_freq 20 \
--exp_name transgan_cifar10