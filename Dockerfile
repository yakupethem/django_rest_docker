FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
COPY . /code/
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["gunicorn","--chdir","django_rest_framework-master","--bind",":8080","blog.wsgi:application","--reload"]