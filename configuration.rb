require 'yamler'

class Configuration

  def initialize
    configuration = YAML.load_file('./settings.yml')
    @configuration = configuration["configuration"]
  end

  def environment_exists?(environment)
    @configuration["environment"].has_key? environment
  end

  def environment_url(environment)
    @configuration["environment"][environment]
  end

  def number
    "+#{@configuration['number']}"
  end

  def message
    @configuration["message"]
  end

end