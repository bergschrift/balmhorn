FROM python:alpine
RUN apk add --no-cache build-base
RUN pip install fontmake
COPY Balmhorn-Bold.ufo Balmhorn-Bold.ufo
RUN fontmake -u Balmhorn-Bold.ufo -o otf
