set :application, "ruby_memes"
set :repo_url, "git@github.com:nullbr/rubymemeapp.git"

# Deploy to the user's home directory
set :deploy_to, "/home/nullbr/#{fetch :application}"

append :linked_files, 'config/master.key', '.env.production'

before "deploy:assets:precompile", "deploy:yarn_install"
namespace :deploy do
  desc "Run rake yarn install"
  task :yarn_install do
    on roles(:web) do
      within release_path do
        execute("cd #{release_path} && yarn install --silent --no-progress --no-audit --no-optional")
      end
    end
  end
end
