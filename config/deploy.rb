set :application, "clipd"
set :user, "clipper"
set :domain, "clipd.org"
set :repository,  "git@github.com:banterability/clipd.git"
set :use_sudo, false
set :deploy_to, "/home/#{user}/public_html/#{application}"
set :port, 30001
set :scm, "git"
default_run_options[:pty] = true
set :ssh_options, {:forward_agent => true}
set :branch, "master"
set :deploy_via, :remote_cache

role :app, domain
role :web, domain
role :db,  domain, :primary => true

namespace :deploy do
  desc "restart application"
  task :restart do
    run "cp /home/clipper/public_html/clipd/current/db/development.sqlite3 /home/clipper/public_html/clipd/current/db/production.sqlite3"
    run "cd /home/clipper/public_html/clipd/current/ && rake db:migrate"
    run "touch #{current_path}/tmp/restart.txt"
  end
end