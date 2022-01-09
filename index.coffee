request = require 'request'
colors  = require 'colors'

Connection = require './connection'
Mirror     = require './mirror'
helpers    = require './helpers'

class Mitm

  interests: ['Instagram', 'Snapchat', 'bts']

  constructor: ->
    console.log 'Initializing the mitm Omegle bot :)'.rainbow.bold
    mirror = new Mirror
    new Connection(@interests, mirror)
    new Connection(@interests, mirror)

mitm = new Mitm()
