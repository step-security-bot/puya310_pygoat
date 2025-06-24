FROM python:3.8@sha256:d411270700143fa2683cc8264d9fa5d3279fd3b6afff62ae81ea2f9d070e390c

# set work directory
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /app/

EXPOSE 8000

CMD ["python3", "pygoat/manage.py" ,"runserver", "127.0.0.1:8000"]
