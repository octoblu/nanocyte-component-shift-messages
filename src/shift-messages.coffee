ReturnValue = require 'nanocyte-component-return-value'

class ShiftMessages extends ReturnValue
  onEnvelope: (envelope) =>
    return envelope.message

module.exports = ShiftMessages
