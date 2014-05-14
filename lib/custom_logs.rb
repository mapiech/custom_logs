require "custom_logs/version"
require 'custom_logs/logger'
require 'custom_logs/socket'
require 'custom_logs/parse_config'
require 'custom_logs/action_controller_ext'


ActionController::Base.send :include, CustomLogs::ActionControllerExt
ActionController::Base.send :around_filter, :custom_logs