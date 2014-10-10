FROM sporsh/nvm
MAINTAINER  Geir Sporsheim <geir.sporsheim@gmail.com>

# Make sure to install using nvm user
USER nvm

# Install Node.js
RUN     echo 'nvm install 0.11' | bash -l
RUN     echo 'nvm alias default 0.11' | bash -l

# Install bower
RUN     echo 'npm install -g bower' | bash -l

# Install grunt
RUN     echo 'npm install -g grunt-cli' | bash -l
