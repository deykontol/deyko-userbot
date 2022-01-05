FROM nikolaik/python-nodejs:python3.9-nodejs16
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir deykomusic \
    && cd deykomusic \
    && git clone https://github.com/DoellBarr/deykomusic
WORKDIR /deykomusic/deykomusic
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD ["python3", "main.py"]
