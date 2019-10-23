
# Use existing docker image as a base
FROM alpine:3.10

# Define maintainer
LABEL maintainer="David Trigo (david.trigo@gmail.com)"

# Download and install dependency
RUN apk --no-cache add multitail &&\
	mkdir /logs

ENTRYPOINT ["multitail","-D","-Iw","/logs/*.log*","1"]
