FROM python:3.7.2-alpine

RUN apk update && \
    apk add zsh vim tmux git tig

ENV FLASK_APP="app.py"

ARG project_dir=/projects/

ADD src/requirements.txt $project_dir

WORKDIR $project_dir

RUN pip install -r requirements.txt
