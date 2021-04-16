FROM ubuntu:20.04
COPY evergreen /evergreen
ENV EVGHOME=/evergreen
EXPOSE 9090
RUN apt-get -y update && apt-get install -y ca-certificates
CMD /evergreen/clients/linux_amd64/evergreen service web --url ${DATABASE_URL} --db ${DATABASE_NAME}
