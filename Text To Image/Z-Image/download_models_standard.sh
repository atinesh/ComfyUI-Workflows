#!/bin/bash
# ============================================
# Z-Image Combined - Model Downloader
# Linux/macOS version (uses wget)
# ============================================

set -e

echo "Creating model directories..."
mkdir -p ComfyUI/models/diffusion_models
mkdir -p ComfyUI/models/text_encoders
mkdir -p ComfyUI/models/vae
mkdir -p ComfyUI/models/SEEDVR2

echo ""
echo "=== Diffusion Models ==="
wget -c -P ComfyUI/models/diffusion_models \
https://huggingface.co/Comfy-Org/z_image/resolve/main/split_files/diffusion_models/z_image_bf16.safetensors

wget -c -P ComfyUI/models/diffusion_models \
https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/diffusion_models/z_image_turbo_bf16.safetensors

echo ""
echo "=== Text Encoder ==="
wget -c -P ComfyUI/models/text_encoders \
https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/text_encoders/qwen_3_4b.safetensors

echo ""
echo "=== VAE ==="
wget -c -P ComfyUI/models/vae \
https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors

echo ""
echo "=== Checkpoint (SEEDVR2) ==="
wget -c -P ComfyUI/models/SEEDVR2 \
https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/seedvr2_ema_7b_sharp_fp8_e4m3fn.safetensors

echo ""
echo "=== VAE (SEEDVR2) ==="
wget -c -P ComfyUI/models/SEEDVR2 \
https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/ema_vae_fp16.safetensors

echo ""
echo "============================================"
echo "All downloads complete!"
echo "============================================"