cd /notebooks/datasets/openwebtext/
bash fetch_openwebtext.sh

cd /notebooks/

fairseq-hydra-train --config-dir /notebooks/data2vec/config/v2 \
    --config-name base_text_only_task \
    task.data=/notebooks/datasets/openwebtext/final_data \
    distributed_training.distributed_world_size=1 \
    checkpoint.save_dir=/notebooks/checkpoints/text
