#!/bin/bash
# Action Log for Benchmarking Qwen Omni on TPU
# This file logs all actions performed during the benchmarking process

# Format: [TIMESTAMP] ACTION: description

log_action() {
    local action="$1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ACTION: $action" >> logs/actions.log
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] ACTION: $action"
}

# Initialize logs directory
mkdir -p logs

# Log repository creation
log_action "Repository 'benchmarking_qwen_omni_tpu' created on GitHub"
log_action "Repository URL: https://github.com/eitanporat/benchmarking_qwen_omni_tpu"
log_action "Local repository initialized at /home/eporat/benchmarking_qwen_omni_tpu"
