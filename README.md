# ComfyUI Workflows

A personal collection of [ComfyUI](https://github.com/comfyanonymous/ComfyUI) workflows for AI image and video generation. Each workflow lives in its own folder with a dedicated README that lists the exact models, custom-node packs, and recommended settings.

## Workflows

| Category | Workflow | Description | Status |
|---|---|---|---|
| Text → Image | [Z-Image (Base + Turbo)](./Text%20To%20Image/Z-Image) | Hybrid two-stage Z-Image workflow for photorealistic humans | ✅ Available |
| Image → Video | _coming soon_ | — | 🚧 Planned |

## Repository structure

```
Comfyui-Workflows/
├─ README.md                 ← You are here (high-level overview)
├─ Samples                 
├─ Text To Image/
│  └─ Z-Image/
│     ├─ README.md           
│     └─ *.json              ← Z-Image ComfyUI workflow 
└─ ...
```

## How to use

1. **Install ComfyUI** — see the [official guide](https://github.com/comfyanonymous/ComfyUI). Installing [ComfyUI-Manager](https://github.com/ltdrdata/ComfyUI-Manager) is strongly recommended.
2. **Pick a workflow** from the table above.
3. **Load the `.json`** into ComfyUI (drag-and-drop, or *Workflow → Open*).
4. **Install missing nodes** using ComfyUI-Manager → *Install Missing Custom Nodes*.
5. **Download the models** into the right `ComfyUI/models/...` folders.
6. **Select the models** in the loader nodes, set your prompt, and run.

---

_Workflows are shared as-is for personal and educational use. Models and custom nodes belong to their respective authors — check their individual licenses._
