require 'rest_client'
require File.dirname(__FILE__) + "/configuration"

config = Configuration.new

if ARGV.size == 1
  if config.environment_exists? ARGV.first
    RestClient.post config.get_environment_url(ARGV.first) , {:From => config.number, :Body => config.message}    
  else
    puts "Settings don't exist for environment #{ARGV.first}"
  end
else
  puts "The program only accepts one argument"
end




 
