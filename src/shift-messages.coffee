ReturnValue = require 'nanocyte-component-return-value'

class ShiftMessages extends ReturnValue
  onEnvelope: (envelope) =>
    { data } = envelope

    data.shift()
    return data

module.exports = ShiftMessages
