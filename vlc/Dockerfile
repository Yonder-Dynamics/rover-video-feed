FROM ubuntu

RUN apt update && apt install -y vlc


COPY . /stream

RUN useradd yonder \
    && mkdir /home/yonder \
    && usermod -aG video yonder \
    && chown -R yonder /stream /home/yonder

USER yonder

WORKDIR /home/yonder

CMD ["/stream/server.sh"]
