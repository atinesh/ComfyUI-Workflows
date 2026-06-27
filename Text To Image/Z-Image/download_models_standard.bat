@echo off
setlocal

REM ============================================
REM Z-Image Combined - Model Downloader
REM Windows version (uses built-in curl)
REM ============================================

echo Creating model directories...
if not exist "ComfyUI\models\diffusion_models" mkdir "ComfyUI\models\diffusion_models"
if not exist "ComfyUI\models\text_encoders" mkdir "ComfyUI\models\text_encoders"
if not exist "ComfyUI\models\vae" mkdir "ComfyUI\models\vae"
if not exist "ComfyUI\models\SEEDVR2" mkdir "ComfyUI\models\SEEDVR2"

echo.
echo === Diffusion Models ===
curl -L -C - -o "ComfyUI\models\diffusion_models\z_image_bf16.safetensors" "https://huggingface.co/Comfy-Org/z_image/resolve/main/split_files/diffusion_models/z_image_bf16.safetensors"
curl -L -C - -o "ComfyUI\models\diffusion_models\z_image_turbo_bf16.safetensors" "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/diffusion_models/z_image_turbo_bf16.safetensors"

echo.
echo === Text Encoder ===
curl -L -C - -o "ComfyUI\models\text_encoders\qwen_3_4b.safetensors" "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/text_encoders/qwen_3_4b.safetensors"

echo.
echo === VAE ===
curl -L -C - -o "ComfyUI\models\vae\ae.safetensors" "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors"

echo.
echo === Checkpoint (SEEDVR2) ===
curl -L -C - -o "ComfyUI\models\SEEDVR2\seedvr2_ema_7b_sharp_fp8_e4m3fn.safetensors" "https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/seedvr2_ema_7b_sharp_fp8_e4m3fn.safetensors"

echo.
echo === VAE (SEEDVR2) ===
curl -L -C - -o "ComfyUI\models\SEEDVR2\ema_vae_fp16.safetensors" "https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/ema_vae_fp16.safetensors"

echo.
echo ============================================
echo All downloads complete!
echo ============================================
pause