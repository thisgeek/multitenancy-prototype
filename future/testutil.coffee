http = require 'http'

class HTTPRequest
    host: 'localhost'
    port: 8080

    constructor: (opts) ->
        {host, port} = (opts or= {})
        @host = host or @host
        @port = port or @port

    send: (path) ->
        opts =
            host: @host
            port: @port
            path: path or= '/'

        rv = null

        request = http.get opts, (res) ->
            buff = ''

            res.setEncoding 'utf8'

            res.on 'data', (chunk) ->
                buff += chunk

            res.on 'end', ->
                if rv then return
                res.body = buff
                rv =
                    error: null
                    response: res


        request.on 'error', (err) ->
            if rv then return
            rv =
                error: err
                response: null


        check = ->
            return rv

        return check

exports.HTTPRequest = HTTPRequest
