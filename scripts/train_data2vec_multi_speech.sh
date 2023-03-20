cd /notebooks/datasets/librispeech
bash fetch_librispeech.sh

cd /notebooks/

fairseq-hydra-train --config-dir /notebooks/data2vec/config/v2 \
    --config-name base_audio_only_task \
    task.data=/notebooks/datasets/librispeech/data \
    distributed_training.distributed_world_size=1 \
    checkpoint.save_dir=/notebooks/checkpoints/speech