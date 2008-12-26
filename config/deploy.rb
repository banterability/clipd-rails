# server options
set :application, "clipd"
set :user, "clipper"
set :domain, "clipd.org"
set :port, 30001
set :use_sudo, false
set :deploy_to, "/home/#{user}/public_html/#{application}"

# git options
default_run_options[:pty] = true
set :ssh_options, {:forward_agent => true}
set :scm, "git"
set :repository,  "git@github.com:banterability/clipd.git"
set :branch, "master"
set :deploy_via, :remote_cache

# roles
role :app, domain
role :web, domain
role :db,  domain, :primary => true

# tasks
namespace :deploy do
  desc "restart application"
  task :restart do
    # copy dev database to production
    run "cp /home/clipper/public_html/clipd/current/db/development.sqlite3 /home/clipper/public_html/clipd/current/db/production.sqlite3"
    # migrate db
    run "cd /home/clipper/public_html/clipd/current/ && rake db:migrate"
    # restart passenger
    run "touch #{current_path}/tmp/restart.txt"
  end
end