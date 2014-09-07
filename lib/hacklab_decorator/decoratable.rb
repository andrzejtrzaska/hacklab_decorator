module HacklabDecorator
  module Decoratable
    def decorate(options = {})
      klass = options.fetch(:with) { "#{self.class.name}Decorator".constantize }
      klass.new(self)
    end
  end
end