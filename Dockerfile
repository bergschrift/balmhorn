FROM python:alpine
RUN apk add --no-cache build-base
RUN pip install fontmake
COPY Balmhorn-Regular.ufo Balmhorn-Regular.ufo
RUN fontmake -u Balmhorn-Regular.ufo -o otf
