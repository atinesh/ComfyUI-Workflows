@echo off
setlocal

REM ============================================
REM Z-Image Combined LVRAM - Model Downloader
REM Windows version (uses built-in curl)
REM ============================================

echo Creating model directories...
if not exist "ComfyUI\models\unet" mkdir "ComfyUI\models\unet"
if not exist "ComfyUI\models\text_encoders" mkdir "ComfyUI\models\text_encoders"
if not exist "ComfyUI\models\vae" mkdir "ComfyUI\models\vae"
if not exist "ComfyUI\models\SEEDVR2" mkdir "ComfyUI\models\SEEDVR2"

echo.
echo === Diffusion Models ===
curl -L -C - -o "ComfyUI\models\unet\z-image-Q4_0.gguf" "https://huggingface.co/unsloth/Z-Image-GGUF/resolve/main/z-image-Q4_0.gguf"
curl -L -C - -o "ComfyUI\models\unet\z-image-turbo-Q4_0.gguf" "https://huggingface.co/unsloth/Z-Image-Turbo-GGUF/resolve/main/z-image-turbo-Q4_0.gguf"

echo.
echo === Text Encoder ===
curl -L -C - -o "ComfyUI\models\text_encoders\Qwen3-4B-Q4_K_M.gguf" "https://huggingface.co/Qwen/Qwen3-4B-GGUF/resolve/main/Qwen3-4B-Q4_K_M.gguf"

echo.
echo === VAE ===
curl -L -C - -o "ComfyUI\models\vae\ae.safetensors" "https://huggingface.co/Comfy-Org/z_image_turbo/resolve/main/split_files/vae/ae.safetensors"

echo.
echo === Checkpoint (SEEDVR2) ===
curl -L -C - -o "ComfyUI\models\SEEDVR2\seedvr2_ema_3b_fp8_e4m3fn.safetensors" "https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/seedvr2_ema_3b_fp8_e4m3fn.safetensors"

echo.
echo === VAE (SEEDVR2) ===
curl -L -C - -o "ComfyUI\models\SEEDVR2\ema_vae_fp16.safetensors" "https://huggingface.co/numz/SeedVR2_comfyUI/resolve/main/ema_vae_fp16.safetensors"

echo.
echo ============================================
echo All downloads complete!
echo ============================================
pause
