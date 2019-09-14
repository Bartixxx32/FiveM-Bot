FROM node
RUN apt-get update
RUN apt-get upgrade -y
WORKDIR /root/
RUN git clone https://github.com/Bartixxx32/bartixxxbot
WORKDIR /root/bartixxxbot
RUN npm i
RUN npm run build

ENTRYPOINT ["node", "/root/bartixxxbot/fivem.js"]
