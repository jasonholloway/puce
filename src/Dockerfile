FROM ubuntu

RUN \
     apt-get update \ 
  && apt-get install -y ansible

RUN apt-get install sshpass

COPY *.sh ./

ENTRYPOINT ["./run.sh"]
CMD ["ansible"]

