#!/bin/bash
# Setup commands for benchmarking environment

# Install uv from astral
curl -LsSf https://astral.sh/uv/install.sh | sh

# Create Python 3.11 virtual environment
~/.local/bin/uv venv --python 3.11

# Install vllm-tpu
source .venv/bin/activate && ~/.local/bin/uv pip install vllm-tpu

# Set environment variables
export HF_HOME=/dev/shm
export XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu"
export JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu
export JAX_ENABLE_COMPILATION_CACHE=1

# Add to bashrc for persistence
echo 'export HF_HOME=/dev/shm' >> ~/.bashrc
echo 'export XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu"' >> ~/.bashrc
echo 'export JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu' >> ~/.bashrc
echo 'export JAX_ENABLE_COMPILATION_CACHE=1' >> ~/.bashrc
