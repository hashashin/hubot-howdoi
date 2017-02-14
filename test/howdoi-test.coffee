Helper = require 'hubot-test-helper'
sinon = require 'sinon'
chai = require 'chai'

expect = chai.expect
Promise = require('bluebird')

helper = new Helper('../src/howdoi.coffee')

describe 'howdoi', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'howdoi date format linux', ->
    @room.user.say('alice', '@hubot howdoi date format linux').then =>
      yield new Promise.delay(500)
      expect(@room.messages).to.eql [
        ['alice', '@hubot howdoi date format linux']
        ['hubot', '@alice http://stackoverflow.com/questions/1401482/yyyy-mm-dd-format-date-in-shell-script']
        ['hubot', '@alice DATE=`date +%Y-%m-%d`']
        ['hubot', '@alice DATE=`date +%Y-%m-%d:%H:%M:%S`']
        ['hubot', '@alice $man date']
      ]
