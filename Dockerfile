FROM golang
WORKDIR /go/src/go-docker
ADD . /go/src/go-docker
RUN go get github.com/gorilla/mux
RUN go get github.com/streadway/amqp
RUN go install go-docker
EXPOSE 8181
ENTRYPOINT /go/bin/go-docker
