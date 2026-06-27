#!/bin/bash
# ============================================
# Z-Image Combined LVRAM - Model Downloader
# Linux/macOS version (uses wget)
# ============================================

set -e

echo "Creating model directories..."
mkdir -p ComfyUI/models/unet
mkdir -p ComfyUI/models/text_encoders
mkdir -p ComfyUI/models/vae
mkdir -p ComfyUI/models/SEEDVR2

echo ""
echo "=== Diffusion Models ==="
wget -c -P ComfyUI/models/unet \
https://huggingface.co/unsloth/Z-Image-GGUF/resolve/main/z-image-Q4_0.gguf

wget -c -P ComfyUI/models/unet \
https://huggingface.co/unsloth/Z-Image-Turbo-GGUF/resolve/main/z-image-turbo-Q4_0.gguf

echo ""
echo "=== Text Encoder ==="
wget -c -P ComfyUI/models/text_encoders \
https://huggingface.co/Qwen/Qwen3-4B-GGUF/resolve/main/Qwen3-4B-Q4_K_M.gguf

echo ""
echo "=== VAE ==="
wget -c -P ComfyUI/models/vae \
https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors

echo ""
echo "=== Checkpoint (SEEDVR2) ==="
wget -c -P ComfyUI/models/SEEDVR2 \
https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/seedvr2_ema_3b_fp8_e4m3fn.safetensors

echo ""
echo "=== VAE (SEEDVR2) ==="
wget -c -P ComfyUI/models/SEEDVR2 \
https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/ema_vae_fp16.safetensors

echo ""
echo "============================================"
echo "All downloads complete!"
echo "============================================"