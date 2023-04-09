FROM satantime/puppeteer-node:16-slim

RUN npm install pnpm -g

RUN apt-get update && apt-get install --no-install-recommends -y \
        git \
        ttf-wqy-microhei \
        ttf-wqy-zenhei \
        xfonts-wqy

ENV HOME="/home/yunzai"
ENV YUNZAI="$HOME/Yunzai"

RUN mkdir -p ${HOME} && chmod a+w ${HOME} -R

COPY entrypoint.sh /
ENTRYPOINT ["bash","/entrypoint.sh"]
CMD ["node","app"]