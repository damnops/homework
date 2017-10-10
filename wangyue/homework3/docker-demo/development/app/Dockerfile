FROM       ubuntu:14.04
MAINTAINER "Wang Yue" <wywy08271@outlook.com>

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:root' |chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

# install dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       python-software-properties \
       software-properties-common \
       vim \
    && rm -Rf /var/lib/apt/lists/* \
    && rm -Rf /usr/share/doc && rm -Rf /usr/share/man \
    && apt-get clean

RUN apt-get update \
    && apt-get install -y openssl wget zip unzip tar xz-utils gzip openssh-client git jq \
    && wget -O /tmp/index.json https://nodejs.org/dist/index.json \
    && VER=$(cat /tmp/index.json | jq -r '.[0].version') \
    && rm /tmp/index.json \
    && wget -O /tmp/node.tar.xz https://nodejs.org/dist/$VER/node-$VER-linux-x64.tar.xz \
    && tar -C /usr/local --strip-components 1 -xvf /tmp/node.tar.xz \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY . /usr/src/app
RUN npm install
RUN nohup npm start &

EXPOSE 3000
EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
