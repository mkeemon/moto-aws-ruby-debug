FROM python:3.12

RUN pip install 'moto[server,sqs]'
ENV MOTO_PORT 5001
CMD moto_server sqs -H 0.0.0.0

HEALTHCHECK --interval=5s --timeout=3s \
  CMD curl --fail http://localhost:5001/?Action=ListQueues || exit 1

EXPOSE $MOTO_PORT
