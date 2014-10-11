FROM ubuntu
MAINTAINER  Geir Sporsheim <geir.sporsheim@gmail.com>


RUN apt-get update
RUN apt-get install -y wget


RUN adduser --disabled-password --gecos "" nvm
ENV HOME /home/nvm
USER nvm
WORKDIR /home/nvm


# Install and set up nvm
ENV NVM_DIR /home/nvm/.nvm
RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.17.2/install.sh | bash -l

RUN echo 'export NVM_DIR="/home/nvm/.nvm"' >> .profile
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm' >> .profile


# Install Node.js
RUN echo 'nvm install 0.11' | bash -l
RUN echo 'nvm alias default 0.11' | bash -l

# Install bower
RUN echo 'npm install -g bower' | bash -l

# Install grunt
RUN echo 'npm install -g grunt-cli' | bash -l
