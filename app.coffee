util       = require 'util'
express    = require 'express'
app        = express()
bodyParser = require 'body-parser'

app.use bodyParser()

app.all '/', (request, response) ->

  data =
    headers   : request.headers
    ip        : request.ip
    path      : request.path
    host      : request.host
    xhr       : request.xhr
    protocol  : request.protocol
    secure    : request.secure
    params    : request.params
    query     : request.query
    body      : request.body
    files     : request.files
    cookies   : request.cookies

  console.log """
    #{
      util.inspect data,
        showHidden : yes
        depth      : null
        colors     : yes
      }
  """

  response.json data

app.listen process.env.PORT