#!/bin/bash

run_script() {
    script_path="$1"
    echo "Running $script_path ..."
    if bash "$script_path"; then
        echo "[SUCCESS] $script_path completed."
    else
        echo "[FAILED] $script_path encountered an error."
    fi
    echo "---------------------------------------------"
}

run_script ./scripts/ECL_script/Autoformer.sh
run_script ./scripts/ECL_script/Informer.sh
run_script ./scripts/ECL_script/Reformer.sh
run_script ./scripts/ECL_script/Transformer.sh
run_script ./scripts/ECL_script/DLinear.sh
run_script ./scripts/ECL_script/PathTST.sh

run_script ./scripts/Exchange_script/Autoformer.sh
run_script ./scripts/Exchange_script/Informer.sh
run_script ./scripts/Exchange_script/Reformer.sh
run_script ./scripts/Exchange_script/Transformer.sh
run_script ./scripts/Exchange_script/DLinear.sh
run_script ./scripts/Exchange_script/PathTST.sh

run_script ./scripts/Weather_script/Autoformer.sh
run_script ./scripts/Weather_script/Informer.sh
run_script ./scripts/Weather_script/Reformer.sh
run_script ./scripts/Weather_script/Transformer.sh
run_script ./scripts/Weather_script/DLinear.sh
run_script ./scripts/Weather_script/PathTST.sh

run_script ./scripts/Traffic_script/Autoformer.sh
run_script ./scripts/Traffic_script/Informer.sh
run_script ./scripts/Traffic_script/Reformer.sh
run_script ./scripts/Traffic_script/Transformer.sh
run_script ./scripts/Traffic_script/DLinear.sh
run_script ./scripts/Traffic_script/PathTST.sh

echo "All scripts attempted. Check above for success/failure."