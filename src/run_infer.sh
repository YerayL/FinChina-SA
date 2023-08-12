CUDA_VISIBLE_DEVICES=0 python inference.py \
    --model_type model_type \
    --base_model path_to_base_model \
    --tokenizer_path tokenizer_path \
    --lora_model path_to_lora_model \
    --data_file path_to_data_file \
    --predictions_file path_to_predictions_file \