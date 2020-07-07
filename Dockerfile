FROM docker:latest

LABEL authors="Eungoo Jung <akasilvernine@gmail.com>"

RUN apk add --purge --no-cache --update \
      python3

RUN pip3 install --ignore-installed --isolated --no-input --compile --exists-action=a --disable-pip-version-check --no-cache-dir \
      awscli

CMD ["awscli"]