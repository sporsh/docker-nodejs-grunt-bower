FROM sporsh/nvm
MAINTAINER  Geir Sporsheim <geir.sporsheim@gmail.com>


# Install Node.js
RUN     echo 'nvm install v0.11.14' | bash -l
RUN     echo 'nvm alias default v0.11.14' | bash -l

# Install bower
RUN     echo 'npm install -g bower' | bash -l

# Install grunt
RUN     echo 'npm install -g grunt-cli' | bash -l
