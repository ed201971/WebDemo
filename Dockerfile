FROM python:3
ADD requirements.txt /.
RUN pip install -r /requirements.txt
RUN apt-get -y update
RUN apt-get install -yqq unzip curl
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN ls -la
RUN apt install -y ./google-chrome-stable_current_amd64.deb
RUN apt-get install -yqq unzip curl
RUN wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/`curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE`/chromedriver_linux64.zip
RUN unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/ 
