# Long-awaited!😫 https://bugs.swift.org/browse/SR-648
#FROM ubuntu:16.04
#FROM alpine:latest
FROM swift:3.1

COPY ./.build/debug/*.so /opt/swift-ecs-ecr/
COPY ./.build/debug/Run /opt/swift-ecs-ecr/
COPY ./Config/* /opt/swift-ecs-ecr/Config/

EXPOSE 8080

CMD ["/opt/swift-ecs-ecr/Run", "--configDir=/opt/swift-ecs-ecr/"]
