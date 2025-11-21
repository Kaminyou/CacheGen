# qasper

python main.py \
    --model_id "mistral-community/Mistral-7B-v0.2" \
    --save_dir ./mistral7b_qasper_data/ \
    --start 0 \
    --end 60  \
    --num_gpus 1 \
    --dataset_name "qasper"

python run_cachegen.py \
    --model_id "mistral-community/Mistral-7B-v0.2" \
    --save_dir ./mistral7b_qasper_data/ \
    --start 0 \
    --end 60 \
    --num_gpus 1 \
    --encoded_dir ./qasper_encoded \
    --results_str cachegen \
    --results_dir mistral7b_results/ \
    --dataset_name qasper \
    --calculate_metric 1

python run_vanilla.py \
    --model_id "mistral-community/Mistral-7B-v0.2" \
    --dataset_name "qasper" \
    --num_gpus 1 \
    --start 0 \
    --end 60 \
    --calculate_metric 1


python run_adaptation.py \
--model_id "mistral-community/Mistral-7B-v0.2" \
--num_gpus 1 \
--dataset_name qasper \
--save_dir ./mistral-community/Mistral-7B-v0.2_qasper_encoded \
--start 0 \
--end 60 \
--slo 0.5 \
--encode


python run_adaptation.py \
--model_id "mistral-community/Mistral-7B-v0.2" \
--num_gpus 1 \
--dataset_name qasper \
--save_dir ./mistral-community/Mistral-7B-v0.2_qasper_encoded \
--start 0 \
--end 60 \
--slo 0.5 \
--chunk_size 1500 \
--total_traces 5 \
--calculate_metric 1 \
--use_paper_algorithm


python run_quantization_baseline.py \
    --model_id "mistral-community/Mistral-7B-v0.2" \
    --dataset_name qasper \
    --num_gpus 1 \
    --save_dir  ./mistral7b_qasper_data/ \
    --start 0 \
    --end 60 \
    --bins 256 \
    --calculate_metric 1