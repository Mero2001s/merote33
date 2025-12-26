FROM alpine:latest
RUN apk add --no-cache curl unzip
WORKDIR /app
RUN curl -L https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip -o v2ray.zip && \
    unzip v2ray.zip && \
    chmod +x v2ray
CMD ./v2ray run -config=https://raw.githubusercontent.com/Mero2001s/merote33/main/config.json
