# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require "capistrano/rvm"
require 'capistrano/puma'

require "capistrano/bundler"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
require 'capistrano/monit'
install_plugin Capistrano::Puma
#install_plugin Capistrano::Puma::Monit
#install_plugin Capistrano::Puma::Daemon
install_plugin Capistrano::Puma::Systemd
# Include cron jobs gem
require "whenever/capistrano"

# Load custom tasks from lib/capistrano/tasks if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
