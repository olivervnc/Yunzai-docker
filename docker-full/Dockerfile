FROM satantime/puppeteer-node:16-slim

RUN npm install pnpm -g

RUN apt-get update && apt-get install -y \
        git \
        ttf-wqy-microhei \
        ttf-wqy-zenhei \
        xfonts-wqy

ENV USERNAME="yunzai"
ENV HOME="/home/$USERNAME"
ENV YUNZAI="/Yunzai"
ENV DEFAULT="/default"

COPY install.sh /
COPY permissions.sh /
RUN bash /install.sh 
RUN bash /permissions.sh

COPY entrypoint.sh /
ENTRYPOINT ["bash","/entrypoint.sh"]