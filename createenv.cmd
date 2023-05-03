call conda remove -n pippy-cu118-env-dev -y --all
call conda create -n pippy-cu118-env-dev -y python=3.10
call conda activate pippy-cu118-env-dev

call conda install pytorch==2.0.0 torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
call pip install -r requirements.txt

call conda deactivate