set :user "mbs348"
set :domain "monster.dreamhost.com"
set :project "fair_use"
set :application, "rails.maxsalzberg.com"
set :applicationdir, "/home/#{user}/#{application}"



set :scm, :git
set :repository,  "git@github.com:maxwell/fair_use.git"
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true



role :web, domain                          # Your HTTP server, Apache/etc
role :app, doman                         # This may be the same as your `Web` server
role :db,  "mysql.maxsalzberg.com", :primary => true # This is where Rails migrations will run
role :db,  "mysql.maxsalzberg.com"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end