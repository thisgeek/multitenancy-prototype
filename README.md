Multitenancy Prototype
======================

The goal of this project is to explore the concept of multitenancy web
application and service hosting. Particularly, we want to flush out the pain
points of the various technologies which could potentially make up our
toolchain.

See [this wikipedia](http://en.wikipedia.org/wiki/Multi-tenant) article for more info.

Currently, the stack in use includes [CouchDB](http://couchdb.apache.org/), [Node.js](http://nodejs.org/), and [CoffeeScript](http://jashkenas.github.com/coffee-script/).

Development Quick Start
------------------------

### Clone the repository

    git clone git://github.com/thisgeek/multitenancy-prototype.git

It includes git submodules pointing to coffee-script, jasmine-node, jsdom, and
nave (see below).

### Install CouchDB
CouchDB install docs: [wiki.apache.org/couchdb/Installation](http://wiki.apache.org/couchdb/Installation)

### Install Node.js
Node.js project source page: [github.com/joyent/node](https://github.com/joyent/node)

You'll need `version >= 0.4.7`

Using *nave* the virtual Node.js environment, is recommended for Node.js
installations. Nave allows you to keep many versions of Node.js installed on a
single machine for easy access to any version of Node.js at your fingertips.
This is a fantastic way to ease the pain of dealing with a fast moving platform
under heavy development.

For more about Nave, see the [project page](https://github.com/isaacs/nave).

### Easy breezy development commands
Initialize the project with:

    cd multitenancy-prototype/
    bin/init

And run the tests with

    bin/cake test

### Update the repository
Your git repository should be periodically updated with

    bin/cake update

This will pull the latest remote changes from the git submodule repositories
and reconfigure this repository for them.

### .gitignore
! Note that JS files (`*.js`) are *not* tracked, since all JS source code is
written in CoffeeScript (`*.coffee`).

### README
Checkout the README files in
[bin/](bin/) and [spec/](spec/)


### FIN
__That's all so far... more soon__

Copyright and License
---------------------
copyright: (c) 2011 by Fireworks Technology Projects Inc.

Unless otherwise indicated, all source code is licensed under the MIT license.
See MIT-LICENSE for details.

And, unless otherwise indicated, all content, including written copy and images
but not including source code, is licensed under a Creative Commons
Attribution-ShareAlike 3.0 Unported license. All derivatives of this content
must be attributed to
["The Fireworks Project"](http://www.fireworksproject.com/). See
[creativecommons.org/licenses/by-sa/3.0/](http://creativecommons.org/licenses/by-sa/3.0/)
for more details.
