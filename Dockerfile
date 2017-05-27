FROM addli/swift:latest

COPY ./.build/release/Run /opt/
EXPOSE 8080

ENTRYPOINT ["/opt/Run"]
