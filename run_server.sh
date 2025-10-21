#!/bin/bash
# Run vLLM server with Qwen3-Omni model

# Set environment variables
export HF_HOME=/dev/shm
export XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu"
export JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu
export JAX_ENABLE_COMPILATION_CACHE=1
export VLLM_XLA_CACHE_PATH="$JAX_COMPILATION_CACHE_DIR/.cache/jax_cache"
export VLLM_USE_V1=1
export VLLM_XLA_CHECK_RECOMPILATION=1

source .venv/bin/activate

vllm serve Qwen/Qwen3-Omni-30B-A3B-Instruct \
  --tensor-parallel-size 4 \
  --max-model-len 16384 \
  --max-num-seqs 256
