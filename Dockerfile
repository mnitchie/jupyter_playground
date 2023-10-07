# Stage 1: Base Python environment
FROM python:3.10 AS base-env

WORKDIR /usr/src/app

RUN pip install --upgrade pip==23.2.1

COPY requirements.txt ./requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip \
    pip install --no-cache-dir -r requirements.txt

CMD ["jupyter", "notebook", "--allow-root", "--ip=0.0.0.0"]
