CUDA_VISIBLE_DEVICES=0,1,2,3 torchrun --nproc_per_node 4 supervised_finetuning.py \
    --model_type model_type \
    --model_name_or_path model_name_or_path \
    --train_file_dir ./data/fsa/train \
    --validation_file_dir ./data/fsa/test\
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --do_train \
    --do_eval \
    --use_peft False \
    --fp16 \
    --max_train_samples 100000 \
    --max_eval_samples 100000 \
    --num_train_epochs 3 \
    --learning_rate 2e-5 \
    --warmup_ratio 0.05 \
    --weight_decay 0.05 \
    --logging_strategy steps \
    --logging_steps 10 \
    --eval_steps 334 \
    --evaluation_strategy steps \
    --save_steps 550 \
    --save_strategy steps \
    --save_total_limit 3 \
    --gradient_accumulation_steps 1 \
    --preprocessing_num_workers 1 \
    --model_max_length 4096 \
    --output_dir fsa-outputs-sft-v1 \
    --overwrite_output_dir \
    --ddp_timeout 30000 \
    --logging_first_step True \
    --target_modules all \
    --lora_rank 8 \
    --lora_alpha 16 \
    --lora_dropout 0.05 \
    --torch_dtype float16 \
    --device_map auto \
    --report_to tensorboard \
    --ddp_find_unused_parameters False \
    --gradient_checkpointing True