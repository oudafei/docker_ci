FROM node
COPY ./webhooks /webhooks
WORKDIR /webhooks
RUN npm config set registry https://registry.npm.taobao.org/ && \  
    npm i
EXPOSE 7777
CMD ["node", "webhooks.js"]

