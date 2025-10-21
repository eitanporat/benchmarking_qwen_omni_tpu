#!/bin/bash
# Run vLLM server with Qwen3-Omni model

source .venv/bin/activate

vllm serve Qwen/Qwen3-Omni-30B-A3B-Instruct \
  --tensor-parallel-size 4 \
  --max-model-len 16384 \
  --max-num-seqs 256
