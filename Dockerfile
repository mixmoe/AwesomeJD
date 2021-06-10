FROM node:lts-alpine3.12

LABEL AUTHOR="none" \
      VERSION=0.1.4

ENV DEFAULT_LIST_FILE=crontab_list.sh \
    NPM_REGISTRY=https://registry.npm.taobao.org \
    ALPINE_REPO=mirrors.tuna.tsinghua.edu.cn \
    CUSTOM_LIST_MERGE_TYPE=append \
    COOKIES_LIST=/scripts/logs/cookies.list \
    REPO_URL=https://github.com/mixmoe/AwesomeJD

RUN set -ex \
    && sed -i "s/dl-cdn.alpinelinux.org/$ALPINE_REPO/g" /etc/apk/repositories \
    && apk update \
    && apk upgrade \
    && apk add --no-cache bash tzdata git moreutils curl jq openssh-client \
    && rm -rf /var/cache/apk/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone \

COPY ./src /src

COPY ./scripts /scripts

RUN set -ex \
    && cd /src \
    && mkdir logs \
    && npm config set registry $NPM_REGISTRY \
    && npm install \
    && cp -v /scripts/docker_entrypoint.sh /usr/local/bin

WORKDIR /src

ENTRYPOINT ["docker_entrypoint.sh"]

CMD ["crond"]