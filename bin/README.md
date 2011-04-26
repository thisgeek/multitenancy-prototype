Repository Commands
===================
The files in this directory are intended to be run as command line commands.
Some are Bash scripts, while others are Node scripts which depend on Node to be
installed before use.

If you have not run `bin/init` (see below) you will not see anything in this
directory other than this README and the init script.

Also, if you are viewing this README remotely, you will not see the other
scripts since they are created locally by the init script and are *not* tracked
by git.

### init

    bin/init

`bin/init` Is a Bash script which will initialize the project repository. If
this is a fresh clone of the repository, don't expect anything to work until
`bin/init` is run.

### cake

    bin/cake

`bin/cake` is the CoffeeScript driven build tool which is configured by the
`Cakefile` in the project root. Your current working directory must be the
project root (where the Cakefile is located) for `bin/cake` to do anything. Run
`bin/cake` to see the usage help screen.

### coffee

    bin/coffee

`bin/coffee` is used to compile CoffeeScript files into JS and can be used to
do this whenever you have the need to build something. Run `bin/coffee` to see
the usage help screen.

### nave

    bin/nave

`nave` provides several commands for you to manage your virtual Node.js
environment.  Run `bin/nave` to see the usage help and checkout the
[docs](https://github.com/isaacs/nave) for more info.
