# configurations.rb

class Configurations
  def initialize(app_config)
    @app_config = app_config
  end

  def set_configuration
    raise NotImplementedError, "You must implement this method in the subclass"
  end

  private

  def apply_configuration(key, value)
    @app_config.set(key, value)
  end
end