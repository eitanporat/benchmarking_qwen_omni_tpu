#!/bin/bash
# Run throughput benchmark with 8k input and 4k output

# Set environment variables
export HF_HOME=/dev/shm
export XLA_FLAGS="--xla_dump_to=/home/eporat/benchmarking_qwen_omni_tpu/cache_dir"
export JAX_COMPILATION_CACHE_DIR=/home/eporat/benchmarking_qwen_omni_tpu/cache_dir
export JAX_ENABLE_COMPILATION_CACHE=1
export VLLM_XLA_CACHE_PATH="$JAX_COMPILATION_CACHE_DIR/.cache/jax_cache"
export VLLM_USE_V1=1
export VLLM_XLA_CHECK_RECOMPILATION=1

source ../.venv/bin/activate

cd tpu-inference/scripts/vllm/benchmarking

python benchmark_serving.py \
  --backend vllm \
  --model Qwen/Qwen3-Omni-30B-A3B-Instruct \
  --dataset-name random \
  --random-input-len 8192 \
  --random-output-len 4096 \
  --num-prompts 100 \
  --port 8000 \
  --save-result
