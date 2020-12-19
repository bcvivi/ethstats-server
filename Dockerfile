FROM node

RUN git clone https://github.com/bcvivi/netstats-server /netstats-server
WORKDIR /netstats-server
RUN npm install
RUN npm install -g grunt-cli
RUN grunt

EXPOSE  3001
CMD ["npm", "start"]
