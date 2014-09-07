module HacklabDecorator
  module LazyHelpers

    def method_missing(m, *args, &block)
      super unless object.respond_to? m
      h.send(m, *args, &block)
    end
  end
end