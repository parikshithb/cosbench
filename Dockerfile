
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y  openjdk-7-jre
RUN apt-get update
RUN apt-get install -y curl

# COSBench driver port
EXPOSE 18088

# COSBench controller port
EXPOSE 19088

COPY cos /cos
CMD cd /cos;./start.sh $ip $t $count $u


