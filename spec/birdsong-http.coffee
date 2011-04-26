{HTTPRequest} = require '../future/testutil'

describe 'birdsong messaging web app server', ->

    it 'should respond to /birdsong with an HTML5 page', ->
        http = new HTTPRequest
        request = http.send '/birdsong'

        waitsFor request, 'HTML5 page', 2000

        runs ->
            {response, error} = request()

            expect(error).not.toBeDefined()
            expect(response.headers['content-type']).toMatch /^text\/html/
            expect(response.body.length).toBeGreaterThan 0
