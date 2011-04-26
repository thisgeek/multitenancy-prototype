fs        = require 'fs'
path      = require 'path'
childProc = require 'child_process'

verbose = true
colored = true

extendGlobalWith = (obj) ->
    for key, val of obj
        global[key] = val

checkAndRemoveFile = (filepath) ->
    if path.existsSync(filepath)
        return fs.unlinkSync(filepath)

task 'test', 'run the full spec test suite', ->
    try
        jasmine = require './third_party/jasmine-node/lib/jasmine-node'
    catch requireError
        console.log 'missing a development testing dependency:'
        process.stderr.write(requireError + '\n')
        process.exit 1

    extendGlobalWith jasmine

    for arg in process.argv
        switch arg
            when '--no-color' then colored = false
            when '--silent' then verbose = false

    specPath = path.join __dirname, 'spec'

    afterSpecRun = (runner, log) ->
        failures = runner.results().failedCount
        if failures then process.exit 1 else process.exit 0

    jasmine.executeSpecsInFolder specPath, afterSpecRun, verbose, colored

task 'update', 'update the project repository', ->
    checkAndRemoveFile './bin/cake'
    checkAndRemoveFile './bin/coffee'
    checkAndRemoveFile './bin/nave'
    childProc.exec 'bin/init', (err, stdout, stderr) ->
        if err
            return process.stderr.write err.toString()

        if stdout
            return console.log stdout

        if stderr
            return process.stderr.write stderr.toString()

