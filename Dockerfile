FROM python:alpine
RUN pip install flask
ADD flask.py ./
CMD ["python", "flask.py"]
EXPOSE 8080
