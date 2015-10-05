ReturnValue = require 'nanocyte-component-return-value'
ShiftMessages = require '../src/shift-messages'

describe 'ShiftMessages', ->
  beforeEach ->
    @sut = new ShiftMessages

  it 'should exist', ->
    expect(@sut).to.be.an.instanceOf ReturnValue

  describe '->onEnvelope', ->
    describe 'when called with an envelope containing array, should remove first object', ->
      beforeEach ->
        @envelope =
          message: "blah"
          data: ['test1', 'test2', 'test3']
      it 'should return the first message', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal ['test2', 'test3']
    describe 'when called with an envelope with empty array', ->
      beforeEach ->
        @envelope =
          message: "blah"
          data: []
      it 'should return empty array', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal []
    describe 'when called with an envelope with 1 value array to simulate last message sent', ->
      beforeEach ->
        @envelope =
          message: "blah"
          data: ['test1']
      it 'should return empty array', ->
        expect(@sut.onEnvelope(@envelope)).to.deep.equal []
