eval "$(conda shell.bash hook)"
conda remove -n pippy-cu118-env-dev -y --all
conda create -n pippy-cu118-env-dev -y python=3.10
conda activate pippy-cu118-env-dev
conda install pytorch==2.0.0 torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
pip install -r requirements.txt
conda deactivate