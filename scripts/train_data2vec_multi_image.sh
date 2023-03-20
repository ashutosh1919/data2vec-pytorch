cd /notebooks/datasets/imagenet/
bash fetch_imagenet.sh

cd /notebooks/

fairseq-hydra-train --config-dir /notebooks/data2vec/config/v2 \
    --config-name base_images_only_task \
    task.data=/notebooks/datasets/imagenet \
    distributed_training.distributed_world_size=1 \
    checkpoint.save_dir=/notebooks/checkpoints/vision
