FROM golang:1.6
MAINTAINER magnus.bengtsson@expressen.se

ADD . $GOPATH/src/github.com/ExpressenAB/oauth2_proxy

WORKDIR $GOPATH/src/github.com/ExpressenAB/oauth2_proxy

RUN go install github.com/ExpressenAB/oauth2_proxy

ENTRYPOINT ["oauth2_proxy"]
