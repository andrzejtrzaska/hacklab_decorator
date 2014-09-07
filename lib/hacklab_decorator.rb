require 'hacklab_decorator/version'
require 'hacklab_decorator/decoratable'
require 'hacklab_decorator/decorator'
require 'hacklab_decorator/railtie' if defined?(Rails)

module HacklabDecorator

  def self.setup_orm(base)
    base.class_eval do
      include HacklabDecorator::Decoratable
    end
  end

end