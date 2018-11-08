FROM golang:1.9 as ecr-helper
RUN go get -u github.com/awslabs/amazon-ecr-credential-helper/ecr-login/cli/docker-credential-ecr-login
WORKDIR /go/src/github.com/awslabs/amazon-ecr-credential-helper
RUN make

FROM busybox as busybox
RUN which busybox

FROM portainer/portainer:1.19.2
COPY --from=ecr-helper /go/src/github.com/awslabs/amazon-ecr-credential-helper/bin/local/docker-credential-ecr-login /bin/docker-credential-ecr-login
COPY config.json /data/config.json
COPY --from=busybox /bin/busybox /bin/busybox
RUN ["/bin/busybox","--install","-s","/bin"]
