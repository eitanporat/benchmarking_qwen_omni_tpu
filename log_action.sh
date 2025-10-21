#!/bin/bash
# Action Logger - Logs all actions with timestamps

LOG_FILE="logs/actions.log"
mkdir -p logs

log_action() {
    local action="$1"
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $action" | tee -a "$LOG_FILE"
}

# Export function for use in subshells
export -f log_action
