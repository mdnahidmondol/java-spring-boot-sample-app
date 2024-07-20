FROM gcr.io/distroless/java17-debian12
WORKDIR /app
COPY /build/libs/*.war /app/*.war
EXPOSE 8081
CMD ["/app/*.war"]