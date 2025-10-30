#!/bin/bash
export QWEN3_VL_MOE_PATH=${CI_SHARE_MODEL}/Qwen3-VL-30B-A3B-Instruct_MOE
export QWEN3_VL_DENSE_PATH=${CI_SHARE_MODEL}/Qwen3-VL-8B-Instruct_DENSE
export INTERN_VL_1B_PATH=${CI_SHARE_MODEL}/InternVL3_5-1B-HF
export VIDEO_ROOT=${CI_SHARE_DATA}/images
export QWEN3_4B_PATH=${CI_SHARE_MODEL}/Qwen3-4B-Instruct-2507
export ROLLOUT_DATA_PATH=${CI_SHARE_DATA}/gsm8k/train.jsonl
export DEEPSEEK_V3_PATH=${CI_SHARE_MODEL}/DeepSeek-V3.1
export GPT_OSS_MINI_PATH=${CI_SHARE_MODEL}/gpt-oss-20b-bf16
export ROLLOUT_TEST_DATA_PATH=${CI_SHARE_DATA}/gsm8k/test.jsonl
export VERL_ROLLOUT_DATA_PATH=${CI_SHARE_DATA}/verl-rollout-step0.jsonl
export QWEN3_PATH=${CI_SHARE_MODEL}/Qwen3-8B
export QWEN3_VL_PATH=${CI_SHARE_MODEL}/Qwen2.5-VL-3B-Instruct
export QWEN3_MOE_PATH=${CI_SHARE_MODEL}/Qwen3-30B-A3B
export INTERNS1_DENSE_PATH=${CI_SHARE_MODEL}/intern-s1-mini
export ROLLOUT_MODEL_PATH=${CI_SHARE_MODEL}/Qwen3-8B
export ALPACA_PATH=${CI_SHARE_DATA}/alpaca
export INTERNS1_DATA_META=${CI_SHARE_DATA}/vlm_ci_data.json
export TORCH_ALLOW_TF32_CUBLAS_OVERRIDE=0
export XTUNER_DETERMINISTIC=true
export XTUNER_USE_LMDEPLOY=1
export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
export PYTHONPYCACHEPREFIX=/tmp
export TRITON_CACHE_DIR=/tmp/.triton
export PYTEST_ADDOPTS='-o cache_dir=/tmp/.pytest_cache'

proxy_off
pip install -e .
pip install openai-harmony
pip install numpy==1.26.4

export PYTHONPATH=${LM_DEPLOY}:$PYTHONPATH