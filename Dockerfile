FROM python:3.9-slim

WORKDIR /opt

COPY main.py /opt/main.py

RUN pip install pandas

ENTRYPOINT ["python", "/opt/main.py"]
CMD ["/opt/bookstore.csv"]
