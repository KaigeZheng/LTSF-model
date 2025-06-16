#!/bin/bash

overall_start_time=$(date +%s)
echo "============================================="
echo "Start Running All Models: $(date '+%Y-%m-%d %H:%M:%S')"
echo "============================================="

run_script() {
    script_path="$1"
    echo
    echo ">>> Running $script_path"
    start_time=$(date +%s)
    echo "Start Time: $(date '+%Y-%m-%d %H:%M:%S')"

    if bash "$script_path"; then
        status="SUCCESS"
    else
        status="FAILED"
    fi

    end_time=$(date +%s)
    duration=$((end_time - start_time))
    echo "End Time  : $(date '+%Y-%m-%d %H:%M:%S')"
    echo "Duration  : ${duration} seconds"
    echo "[${status}] $script_path"
    echo "---------------------------------------------"
}

run_script ./scripts/ECL_script/Autoformer.sh
run_script ./scripts/ECL_script/Informer.sh
run_script ./scripts/ECL_script/Reformer.sh
run_script ./scripts/ECL_script/Transformer.sh
run_script ./scripts/ECL_script/DLinear.sh
run_script ./scripts/ECL_script/PatchTST.sh

run_script ./scripts/Exchange_script/Autoformer.sh
run_script ./scripts/Exchange_script/Informer.sh
run_script ./scripts/Exchange_script/Reformer.sh
run_script ./scripts/Exchange_script/Transformer.sh
run_script ./scripts/Exchange_script/DLinear.sh
run_script ./scripts/Exchange_script/PatchTST.sh

run_script ./scripts/Weather_script/Autoformer.sh
run_script ./scripts/Weather_script/Informer.sh
run_script ./scripts/Weather_script/Reformer.sh
run_script ./scripts/Weather_script/Transformer.sh
run_script ./scripts/Weather_script/DLinear.sh
run_script ./scripts/Weather_script/PatchTST.sh

run_script ./scripts/Traffic_script/Autoformer.sh
run_script ./scripts/Traffic_script/Informer.sh
run_script ./scripts/Traffic_script/Reformer.sh
run_script ./scripts/Traffic_script/Transformer.sh
run_script ./scripts/Traffic_script/DLinear.sh
run_script ./scripts/Traffic_script/PatchTST.sh

overall_end_time=$(date +%s)
total_duration=$((overall_end_time - overall_start_time))

echo
echo "============================================="
echo "Finished All Scripts: $(date '+%Y-%m-%d %H:%M:%S')"
echo "Total Time Used: ${total_duration} seconds"
echo "============================================="