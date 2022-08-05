FROM ubuntu:22.04
MAINTAINER Aleksej Pojda "aleksej.pojda@privatbank.ua"
RUN apt update -y && apt install -y python3-pip python3-dev python-is-python3
CMD ['ufw allow 5000']
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
COPY ./myAPI/myAPI.py /app
ENTRYPOINT ["python3"]
CMD ["myAPI.py"]