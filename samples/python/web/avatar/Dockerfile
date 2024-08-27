# syntax=docker/dockerfile:1
FROM python:3.12
WORKDIR /
COPY requirements.txt .
COPY app.py .
COPY chat.html .
COPY env .
COPY runserver.sh .
RUN chmod +x runserver.sh
COPY static/ /
RUN pip3 install -r requirements.txt
EXPOSE 5000
RUN bash /env
ENTRYPOINT ["/runserver"]
CMD ["python", "-m", "flask", "run", "-h", "0.0.0.0", "-p", "5000"]