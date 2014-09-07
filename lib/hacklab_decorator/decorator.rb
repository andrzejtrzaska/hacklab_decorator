module HacklabDecorator

  class Decorator
    attr_reader :object

    def initialize(object)
      @object = object
    end

    def self.delegate_all
      define_method :method_missing do |m, *args, &block|
        super(m, *args, &block) unless object.respond_to? m
        object.send(m, *args, &block)
      end
    end
  end
end
