# Multitenancy Prototype

The goal of this project is to explore the concept of multitenancy web application and service hosting. Particularly, we want to flush out the pain points of the various technologies which could potentially make up our toolchain.

See [this wikipedia](http://en.wikipedia.org/wiki/Multi-tenant) article for more info.

Currently, the stack in use includes [CouchDB](http://couchdb.apache.org/), [Node.js](http://nodejs.org/), and [CoffeeScript](http://jashkenas.github.com/coffee-script/).

## Quick Start

### Get the dependencies you don't already have.
* Clone this repository with `git clone`. It includes git submodules pointing to coffee-script, jasmine-node, and nave (see below).
* [Install CouchDB](http://wiki.apache.org/couchdb/Installation)
* [Install Node.js](https://github.com/joyent/node) `version >= 0.4.2`
    Using *nave* the virtual Node.js environment, is recommended. It is just a simple bash script which you can find in this repository at `third_party/nave`. Just copy `nave.sh` to somplace on your $PATH for easy access to any version of Node.js at your fingertips.
* Initialize the project with:

    cd multitenancy-prototype
    bin/init

* And run the tests with

    bin/cake test


__That's all so far... more soon__
