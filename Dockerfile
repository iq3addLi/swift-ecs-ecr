FROM swift:3.1
#FROM ubuntu:16.04

COPY ./.build/debug/* /opt/swift-ecs-ecr/
COPY ./Config/* /opt/swift-ecs-ecr/Config/

EXPOSE 8080

CMD ["/opt/swift-ecs-ecr/Run", "--configDir=/opt/swift-ecs-ecr/"]
