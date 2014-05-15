class CustomLogsGenerator < Rails::Generators::Base

  source_root File.expand_path("../templates", __FILE__)

  desc 'Creating config file for redis logstash'
  def config
    template "custom_logs.yml", 'config/custom_logs.yml'
  end

  private

  def user_methods
    user_methods = ApplicationController.new.methods.select{|m| m.to_s.starts_with?('current_')}
  end


end