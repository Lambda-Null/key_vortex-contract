# frozen_string_literal: true

module KeyVortex
  # NOTE: yard isn't going to document a shared example, so adding it here.

  # KeyVortex will assume that adapters behave in certain ways, which
  # are documented here. You can also include shared examples provided
  # by this gem to ensure that it conforms to those behaviors.
  #
  # In order to use KeyVortex.vortex, it must register the class by
  # calling KeyVortex.register.
  #
  # If #save is called, #find must be able to retrieve the record
  # using the #key afterwards.
  #
  # If #remove is called, #find must return nil on the key afterward.
  #
  # if #save is called on a record, subsequent calls to #find must
  # return the same class that was saved.
  module Contract
    VERSION = "1.0.0"
  end
end
