FROM python:alpine
RUN pip install flask -i https://pypi.douban.com/simple
ADD flask.py ./
CMD ["python", "flask.py"]
EXPOSE 8080