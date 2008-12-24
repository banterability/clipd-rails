set :application, "clip-d"
set :user, "clipper"
set :domain, "clipd.org"
set :repository,  "git@github.com:banterability/clip-d.git"
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
    run "touch #{current_path}/tmp/restart.txt"
  end
end