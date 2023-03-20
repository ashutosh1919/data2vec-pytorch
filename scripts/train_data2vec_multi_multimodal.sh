cd /notebooks/

fairseq-hydra-train --config-dir /notebooks/data2vec/config/v2 \
    --config-name base_multimodal_task \
    task.image.data=/notebooks/datasets/imagenet \
    task.audio.data=/notebooks/datasets/librispeech/data \
    task.text.data=/notebooks/datasets/openwebtext/final_data \
    distributed_training.distributed_world_size=1 \
    checkpoint.save_dir=/notebooks/checkpoints/multimodal