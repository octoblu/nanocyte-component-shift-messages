ReturnValue = require 'nanocyte-component-return-value'
_           = require 'lodash'

class ShiftMessages extends ReturnValue
  onEnvelope: (envelope) =>
    { data } = envelope

    data = [] unless _.isArray data
    data.shift()
    return data

module.exports = ShiftMessages
