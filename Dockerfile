FROM python:3.10-alpine3.15
COPY . /flask-app
WORKDIR /flask-app
RUN pip install -r requirement.txt
EXPOSE 5002
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]


