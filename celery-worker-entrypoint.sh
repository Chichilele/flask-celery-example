#!/bin/bash
. myenv/bin/activate && \
    celery -A app.celery worker --loglevel=info