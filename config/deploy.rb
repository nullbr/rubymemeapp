set :application, "ruby_memes"
set :repo_url, "git@github.com:nullbr/rubymemeapp.git"

# Deploy to the user's home directory
set :deploy_to, "/home/nullbr/#{fetch :application}"

append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', '.bundle', 'public/system', 'public/uploads'

# Only keep the last 5 releases to save disk space
set :keep_releases, 5
