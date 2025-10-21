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
export XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu/cache_dir"
export JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu/cache_dir
export JAX_ENABLE_COMPILATION_CACHE=1
export VLLM_XLA_CACHE_PATH="$JAX_COMPILATION_CACHE_DIR/.cache/jax_cache"
export VLLM_USE_V1=1
export VLLM_XLA_CHECK_RECOMPILATION=1

# Optional environment variables (uncomment as needed)
# export MODEL_IMPL_TYPE=flax_nnx
# export QUANTIZATION=
# export NEW_MODEL_DESIGN=
# export USE_V6E8_QUEUE=
# export JAX_RANDOM_WEIGHTS=
# export SKIP_ACCURACY_TESTS=
# export VLLM_MLA_DISABLE=

# Benchmark configuration variables
# export TEST_MODEL=
# export MINIMUM_ACCURACY_THRESHOLD=
# export MINIMUM_THROUGHPUT_THRESHOLD=
# export TENSOR_PARALLEL_SIZE=
# export INPUT_LEN=
# export OUTPUT_LEN=
# export PREFIX_LEN=
# export MAX_MODEL_LEN=
# export MAX_NUM_SEQS=
# export MAX_NUM_BATCHED_TOKENS=

# Add to shell rc files for persistence
for rc_file in ~/.bashrc ~/.zshrc; do
  if [ -f "$rc_file" ]; then
    echo 'export HF_HOME=/dev/shm' >> "$rc_file"
    echo 'export XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu/cache_dir"' >> "$rc_file"
    echo 'export JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu/cache_dir' >> "$rc_file"
    echo 'export JAX_ENABLE_COMPILATION_CACHE=1' >> "$rc_file"
    echo 'export VLLM_XLA_CACHE_PATH="$JAX_COMPILATION_CACHE_DIR/.cache/jax_cache"' >> "$rc_file"
    echo 'export VLLM_USE_V1=1' >> "$rc_file"
    echo 'export VLLM_XLA_CHECK_RECOMPILATION=1' >> "$rc_file"
  fi
done

# Source the appropriate rc file to load environment variables
if [ -n "$ZSH_VERSION" ]; then
  source ~/.zshrc 2>/dev/null || true
elif [ -n "$BASH_VERSION" ]; then
  source ~/.bashrc 2>/dev/null || true
fi
