# NVIDIA Docker Image for WSL

Workaround to the https://github.com/NVIDIA/nvidia-docker/issues/1551.

```shell
./fix-image.sh <source_image> <target_image>
docker run --gpus all <target_image> nvidia-smi
```
