FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11

ENV COMMAND_A=6
ENV COMMAND_B=8

COPY ./requirements.txt /app/requirements.txt

RUN echo ${COMMAND_A}
RUN echo ${COMMAND_B}
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app /app
CMD [ "python3.11","test.py" ]