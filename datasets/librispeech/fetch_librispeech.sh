# Run this bash script from this directory. 
mkdir data
python prep_librispeech_data.py --output-root ./data --vocab-type bpe

python change_filecols.py

mv data/train-clean-360-1.tsv data/train.tsv
mv data/dev-clean-1.tsv data/valid.tsv