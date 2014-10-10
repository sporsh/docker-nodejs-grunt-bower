# docker-nodejs-grunt-bower
Node.js installed via nvm on a non-root user with grunt and bower pre-installed.

This allows for running npm, bower and grunt on a host volume.

## Installed via nvm:
- [node.js](http://nodejs.org/)
- [grunt](http://gruntjs.com/)
- [bower](http://bower.io/)


## Usage:
`docker run -v `pwd`:/src -w /src sporsh/nodejs-grunt-bower "npm install"`
`docker run -v `pwd`:/src -w /src sporsh/nodejs-grunt-bower "bower install"`
`docker run -v `pwd`:/src -w /src sporsh/nodejs-grunt-bower "grunt build"`
