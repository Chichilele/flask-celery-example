FROM python

COPY templates/ /code/templates/
COPY app.py requirements.txt run-redis.sh /code/
WORKDIR /code
RUN python -m venv myenv && \
    . myenv/bin/activate && \
    pip install -r requirements.txt
ENTRYPOINT [ "bash" ]