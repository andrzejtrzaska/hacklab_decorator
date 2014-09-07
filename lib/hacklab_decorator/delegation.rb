module HacklabDecorator
  module Delegation
    def method_missing(m, *args, &block)
      super unless object.respond_to? m
      object.send(m, *args, &block)
    end
  end
end