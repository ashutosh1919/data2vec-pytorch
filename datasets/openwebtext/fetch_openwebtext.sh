# Downloading and extracting the dataset
wget https://zenodo.org/record/3834942/files/openwebtext.tar.xz
tar -xf openwebtext.tar.xz
rm openwebtext.tar.xz

# Extracting all the files inside the dataset folder
xz --decompress openwebtext/*.xz

# Moving the last subset of data as validation data
mkdir valid
mv openwebtext/urlsf_subset20* valid/
mv openwebtext train

# Combining all the files into single file to create train and valid files.
cat valid/* valid.raw
wc -l valid.raw
cat train/* train.raw
wc -l train.raw

# Deleting the folder of the original dataset (Since we created single file)
rm -rf train
rm -rf valid

# Move the train and valid files to new `data` dir.
mkdir data
mv valid.raw data/
mv train.raw data/

# Download GPT-2 encoder related information which will be used for BPE-Encoding of data
mkdir -p gpt2_bpe
wget -O gpt2_bpe/encoder.json https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/encoder.json
wget -O gpt2_bpe/vocab.bpe https://dl.fbaipublicfiles.com/fairseq/gpt2_bpe/vocab.bpe

# Applying BPE-Encoder on the data
for SPLIT in train valid; do \
    python -m multiprocessing_bpe_encoder \
        --encoder-json gpt2_bpe/encoder.json \
        --vocab-bpe gpt2_bpe/vocab.bpe \
        --inputs data/${SPLIT}.raw \
        --outputs data/${SPLIT}.bpe \
        --keep-empty \
        --workers 60; \
done

# Preprocess data to create dictionary.
fairseq-preprocess \
    --only-source \
    --trainpref data/train.bpe \
    --validpref data/valid.bpe \
    --destdir final_data/ \
    --workers 100
