# Exploring CacheGen Under Realistic Scenarios
Duke Advanced Computer Networks (COMPSCI 514 2025 Fall) Final Project

## Contributions
Based on the official [CacheGen repo](https://github.com/UChi-JCL/CacheGen), we
- Fix a KV cache extraction bug
- Support the adaptation algorithm mentioned in the paper
- Benchmark CacheGen with QASPER dataset

## Execute
Please run `scripts/7b_qasper.sh`. It contains everything for QASPER benchmarking.

### Details: Different quantization levels
For CacheGen with different fixed quantization level, please modify Line#43 `os.environ["QUANT_LEVEL"] = "2"` into different level (1 to 3) in `run_cachegen.py`. And then,
```
$ python run_cachegen.py \
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
```
### Details: Benchmark LongChat with the adaptation algorithm mentioned in the paper
Run `scripts/adapt.sh`.

