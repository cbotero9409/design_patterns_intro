# app_config.rb

class AppConfig
  attr_accessor :configurations

  @instance = nil

  def initialize
    @configurations = {}
  end

  def self.instance
    @instance ||= new
  end

  def set(key, value)
    @configurations[key.to_sym] = value
  end

  def get(key)
    @configurations[key.to_sym]
  end

  private_class_method :new
end