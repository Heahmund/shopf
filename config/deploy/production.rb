set :stage, :production
set :rails_env, :production
set :domain, "51.250.71.158"

role :web, fetch(:domain)
role :app, fetch(:domain)
role :db,  fetch(:domain), :primary => true

set :branch, 'master'
set :deploy_to, "/home/wicked/www/51.250.71.158"
set :tmp_dir, '/home/wicked/www/tmp'
set :keep_releases, 20

set :bundle_flags, '--deployment'

set :ssh_options, forward_agent: true, user: 'wicked'

# Defaults to false. If true, it's skip migration if files in db/migrate not modified
set :conditionally_migrate, true

set :rvm_type, :user
set :rvm_ruby_version, RUBY_VERSION

append :linked_dirs, "log", "tmp"
append :linked_files, 'config/database.yml', 'config/master.key'

namespace :deploy do
  task :restart => 'monit:restart'
end

after 'deploy:publishing', 'deploy:restart'