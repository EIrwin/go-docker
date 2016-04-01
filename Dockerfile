FROM golang
WORKDIR /go/src/go-docker
ADD . /go/src/go-docker
RUN go get {dependency}
RUN go get {dependency}
RUN go install go-docker
EXPOSE 8181
ENTRYPOINT /go/bin/{project-name}
