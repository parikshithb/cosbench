FROM openjdk:7-jre-alpine
RUN apk --no-cache add curl
RUN apk add --no-cache --upgrade bash

# COSBench driver port

EXPOSE 18088

# COSBench controller port
EXPOSE 19088

COPY cos /cos
CMD cd /cos;./start.sh $ip $t $count $u
