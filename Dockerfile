FROM centos:7.5.1804
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash - &&\
  yum -y install nodejs
COPY  app/package.json app/package-lock.json /
RUN npm install

COPY  app /app
WORKDIR  /app 
CMD ["node", "app.js"]