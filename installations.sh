# Installing Torch related packages
pip install torch==1.13.1+cu116 torchvision==0.14.1+cu116 torchaudio==0.13.1+cu116 torchtext==0.14.1 -f https://download.pytorch.org/whl/torch_stable.html

# Installing lxml
sudo apt-get install python-lxml -y

# Installing requirements.txt
pip install -r requirements.txt
git clone https://github.com/facebookresearch/fairseq
cd /notebooks/fairseq
pip install --editable ./
cd /notebooks/

pip install --upgrade lxml

# Installing NVIDA Apex
git clone https://github.com/NVIDIA/apex
cd apex
pip install -v --no-cache-dir --global-option="--cpp_ext" --global-option="--cuda_ext" \
  --global-option="--deprecated_fused_adam" --global-option="--xentropy" \
  --global-option="--fast_multihead_attn" ./
