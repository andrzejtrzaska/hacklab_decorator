module HacklabDecorator

  class Decorator
    attr_reader :object

    def initialize(object)
      @object = object
    end

    def self.delegate_all
      include Delegation
    end

    def h
      RequestStore.store[:current_controller].view_context
    end
  end
end
