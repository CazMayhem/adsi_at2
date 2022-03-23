FROM jupyter/scipy-notebook:0ce64578df46

RUN pip install torch==1.9.0+cpu torchvision==0.10.0+cpu torchtext==0.10.0 -f https://download.pytorch.org/whl/torch_stable.html

ENV PYTHONPATH "${PYTHONPATH}:/home/jovyan/work"

RUN echo "export PYTHONPATH=/home/jovyan/work" >> ~/.bashrc

WORKDIR /home/jovyan/work


# DON'T ADD LAB 4 EX 2 FAST API - NOT NEEDED AT THE MODEL LEVEL
# FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
# RUN pip install scikit-learn==0.22.1 pandas==0.25.3 numpy==1.18.1 fastapi==0.63.0 uvicorn==0.13.3 joblib==1.1.0
# CMD ["gunicorn", "-k", "uvicorn.workers.UvicornWorker", "-c", "/gunicorn_conf.py", "main:app"]

