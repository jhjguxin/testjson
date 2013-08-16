$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

desc "Run Console"
task :console do |t, args|
  env = ENV['APP_ENV'] || 'development'
  puts "Loading #{env} environment"

  require "rubygems"
  require "bundler"


  # Set up gems listed in the Gemfile.
  ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __FILE__)

  Bundler.require

  require "active_support/core_ext"
  require "active_support/json"
  require "active_support/inflector"
  # require "active_support/time_with_zone"
  require "active_model"

  require "./gx_push"
  require "irb"
  require 'irb/completion'
  # 必须执行 ARGV.clear，不然 rake 后面的参数会被带到 IRB 里面
  ARGV.clear
  IRB.start
end
