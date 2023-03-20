import pandas as pd
from tqdm import tqdm 

files = [
    ("data/train-clean-360.tsv", "data/train-clean-360-1.tsv"),
    ("data/dev-clean.tsv", "data/dev-clean-1.tsv")
]
REQUIRED_COLUMNS = ["audio", "n_frames"]

for file1, file2 in tqdm(files):
    df = pd.read_csv(file1, sep='\t')
    df = df[REQUIRED_COLUMNS]
    df.to_csv(file2, sep='\t', index=False)