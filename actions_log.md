# Actions Log - Benchmarking Qwen Omni TPU

## 2025-10-21

### Repository Setup
- Created GitHub repository `benchmarking_qwen_omni_tpu` at https://github.com/eitanporat/benchmarking_qwen_omni_tpu
- Initialized local git repository
- Set git config: user.email=eitan.porat@weizmann.ac.il, user.name=Eitan Porat

### Environment Setup
- Installed uv from astral.sh
- Created Python 3.11 virtual environment using uv
- Installed vllm-tpu package with 207 dependencies

### Environment Variables Configured
- `HF_HOME=/dev/shm` - Use shared memory for Hugging Face cache (355GB available)
- `XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu"`
- `JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu`
- `JAX_ENABLE_COMPILATION_CACHE=1`
- `VLLM_XLA_CACHE_PATH="$JAX_COMPILATION_CACHE_DIR/.cache/jax_cache"`
- `VLLM_USE_V1=1`
- `VLLM_XLA_CHECK_RECOMPILATION=1`

### Files Created
- `setup.sh` - Complete setup script with all installation steps
- `run_server.sh` - vLLM server startup script with environment variables
- `run_benchmark.sh` - Benchmark script configured for 8k input / 4k output
- `README.md` - Repository documentation
- `actions_log.md` - This file

### Submodule Added
- Added tpu-inference repository as submodule from https://github.com/eitanporat/tpu-inference.git

### Server Configuration
- Model: Qwen/Qwen3-Omni-30B-A3B-Instruct
- Tensor parallel size: 4 (utilizing all 4 TPU chips)
- Max model length: 16384 tokens
- Max concurrent sequences: 256
- TPU type: v6e-4

### Benchmark Configuration
- Input length: 8192 tokens
- Output length: 4096 tokens
- Number of prompts: 100
- Dataset: random
- Backend: vllm

### Issues Encountered and Resolved
1. Initial server startup failed with "No space left on device" - root cause was HF_HOME not set, causing model download to /home instead of /dev/shm
2. Fixed by adding `export HF_HOME=/dev/shm` to run_server.sh
3. Server restarted successfully with correct cache location

### Current Status
- vLLM server running in background (process d8516d)
- Model loading in progress
- All scripts committed to GitHub repository
