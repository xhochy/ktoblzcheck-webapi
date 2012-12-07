express = require 'express'
ktoblzcheck = require 'ktoblzcheck'

app = express()

app.get '/check/:blz/:nr', (req, res) ->
    res.send ktoblzcheck.checkBLZAccount(req.paramas.blz, req.params.nr)

app.get '/name/:blz', (req, res) ->
    name = ktoblzcheck.getNameForBLZ(req.params.blz)
    res.status(404) unless name?
    res.send(name)

app.listen 3333
