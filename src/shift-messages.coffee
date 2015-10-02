ReturnValue = require 'nanocyte-component-return-value'

class ShiftMessages extends ReturnValue
  onEnvelope: (envelope) =>
    { data } = envelope
    
    message = data.shift()

    return message

module.exports = ShiftMessages
