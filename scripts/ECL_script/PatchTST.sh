export CUDA_VISIBLE_DEVICES=0


python -u run.py \
  --is_training 1 \
  --root_path ./dataset/electricity/ \
  --data_path electricity.csv \
  --model_id ECL_96_96 \
  --model PatchTST \
  --data custom \
  --features M \
  --seq_len 96 \
  --label_len 48 \
  --pred_len 96 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 1 \
  --dec_in 1 \
  --c_out 1 \
  --des 'Exp' \
  --freq 't' \
  --itr 1 \
  --fc_dropout 0.05 \
  --head_dropout 0.0 \
  --patch_len 16 \
  --stride 8 \
  --padding_patch end \
  --revin 1 \
  --affine 0 \
  --subtract_last 0 \
  --decomposition 0 \
  --kernel_size 25 \
  --individual 0