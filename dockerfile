FROM ubuntu:18.04
EXPOSE 8080
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Singapore

RUN apt-get update
RUN apt-get install -y nodejs npm
ENV USER root
COPY server.js /home/user/server.js
COPY accounts.js /home/user/accounts.js
COPY accoverview.css /home/user/accoverview.css
COPY accoverview.html /home/user/accoverview.html
COPY accoverview.js /home/user/accoverview.js
COPY database.js /home/user/database.js
COPY icon.png /home/user/icon.png
COPY login-page.css /home/user/login-page.css
COPY login-page.html /home/user/login-page.html
COPY login-page.js /home/user/login-page.js
COPY main.html /home/user/main.html
COPY main.js /home/user/main.js
COPY profile.css /home/user/profile.css
COPY profile.html /home/user/profile.html
COPY profile.js /home/user/profile.js
COPY transactions.js /home/user/transactions.js
COPY transoverview.css /home/user/transoverview.css
COPY transoverview.html /home/user/transoverview.html
COPY transoverview.js /home/user/transoverview.js
COPY users.js /home/user/users.js
COPY start.sh /home/user/start.sh
COPY package.json /home/user/package.json
COPY entrypoint.sh /home/user/entrypoint.sh
RUN chmod a+x /home/user/start.sh
RUN chmod +x /home/user/entrypoint.sh
RUN useradd -ms /bin/bash user
WORKDIR /home/user
ENTRYPOINT ["/entrypoint.sh"]