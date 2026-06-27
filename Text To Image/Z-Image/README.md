# Z-Image Combined — Base + Turbo (Hybrid Two-Stage ComfyUI Workflow)

**Stop choosing between quality and speed.** A hybrid ComfyUI workflow that chains **Z-Image (Base)** and **Z-Image (Turbo)** by Alibaba Tongyi-MAI into a single render.

![ComfyUI](https://img.shields.io/badge/ComfyUI-Workflow-1f6feb)
![Model](https://img.shields.io/badge/Model-Z--Image%20Base%20%2B%20Turbo-8957e5)
![VRAM](https://img.shields.io/badge/VRAM-12%20GB%20%7C%2040%20GB%2B-2ea043)

<!-- Drop a hero/banner image here -->
<p align="center">
  <img src="../../Samples/Sample Family.png" alt="Z-Image Samples" width="60%">
</p>

## ✨ Why this workflow?

This workflow splits a single render across **both engines** on a shared sigma schedule:

- **Z-Image (Base)** lays down composition, anatomy, and overall structure.
- **Z-Image (Turbo)** refines lighting, microtexture, and fine detail — fast.

The result is a level of detail that **no single-model setup produces alone**.

Workflow also uses a **`ZImageTimestepNoise`** node that injects controlled noise perturbation into the sampling timesteps to break model homogenization — so different seeds give you genuinely different images instead of near-duplicates.

## 📦 What's included

- ✅ **2 image-generation workflows** — Standard (`z_image_combined_t2i_standard_v4.json`) + Low-VRAM (`z_image_combined_t2i_lvram_v4.json`)
- ✅ **Model download scripts** for one-click setup (`.sh` for Linux/macOS, `.bat` for Windows)
- ✅ **Sample images**

## 🖥️ Choose your build

| | **Standard** | **Low-VRAM** |
|---|---|---|
| **Target VRAM** | 40 GB+ | ~12 GB (runs locally) |
| **Diffusion models** | Full BF16 | GGUF-quantized (Q4) |
| **Text encoder** | `qwen_3_4b` BF16 | `Qwen3-4B` GGUF |
| **Best for** | Maximum fidelity | Consumer GPUs (e.g. RTX 3060/4070) |
| **Workflow file** | `z_image_combined_t2i_standard_v4.json` | `z_image_combined_t2i_lvram_v4.json` |

## 🚀 Quick start

### 1. Install the custom nodes

Install relevant custom nodes via **ComfyUI Manager** 

### 2. Download the models

Check the bundled `.sh` / `.bat` scripts for one-click setup.

### 3. Load & run

1. Drag the `.json` workflow into ComfyUI (or **Workflow → Open**).
2. Confirm the loaders point at your downloaded files (diffusion models, text encoder, VAE).
3. Type your prompt, hit **Run**.

## 🎨 Sampler / scheduler presets

The Turbo refinement stage is where the *look* is decided. Two presets cover most needs:

| Preset | Sampler + Scheduler | Result |
|---|---|---|
| 🎬 **Cinematic** | `dpmpp_sde` + `beta` | Photorealistic, smooth, stable, highly detailed |
| 🎨 **Stylized** | `euler_ancestral` + `ddim_uniform` | Artistic / gritty, high contrast, more variation, faster |
