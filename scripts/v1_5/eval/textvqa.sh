#!/bin/bash

python -m llava.eval.model_vqa_loader \
    --model-path /home/chengzhang/models/llava/llava-v1.5-7b \
    --question-file ./playground/data/eval/textvqa/llava_textvqa_val_v051_ocr.jsonl \
    --image-folder /home/chengzhang/datasets/TextVQA/images-v0.5/train_images \
    --answers-file ./playground/data/eval/textvqa/answers/llava-v1.5-7b.jsonl \
    --temperature 0 \
    --conv-mode vicuna_v1

python -m llava.eval.eval_textvqa \
    --annotation-file /home/chengzhang/datasets/TextVQA/annotation/TextVQA_0.5.1_val.json \
    --result-file ./playground/data/eval/textvqa/answers/llava-v1.5-7b.jsonl
