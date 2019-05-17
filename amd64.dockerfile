FROM amd64/alpine

RUN mkdir -p /run/sshd
# enable ssh
RUN apk --update add --no-cache openssh bash nano docker\
  && mkdir -p /home/root/.ssh && chmod 700 /home/root/.ssh/ \
  && rm -rf /var/cache/apk/*
ADD ssh/*      /etc/ssh/
RUN echo 'root:root' | chpasswd

# update bash
RUN sed -i 's/root:x:0:0:root:\/root:\/bin\/ash/root:x:0:0:root:\/root:\/bin\/bash/' /etc/passwd

STOPSIGNAL SIGTERM

EXPOSE 22

ADD entrypoint.sh /
ENTRYPOINT ["sh", "entrypoint.sh"]
