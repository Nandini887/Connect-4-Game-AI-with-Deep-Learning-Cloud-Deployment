FROM python:3.11
ADD requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt
RUN mkdir /backend/
RUN chmod -R 777 /backend
COPY resnet20_final_updated.h5 .
COPY best_transformer.keras .
ADD anvil_test.py /
ENV PYTHONUNBUFFERED=1
CMD [ "python", "./anvil_test.py" ]
