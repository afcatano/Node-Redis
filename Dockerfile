FROM node:15
                                                  
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

USER root

RUN chgrp -R 0 /usr/src/app && chmod -R g+w /usr/src/app && chmod 550  /usr/src/app

USER 1001

EXPOSE 8000
EXPOSE 3001

CMD [ "npm", "start" ]
