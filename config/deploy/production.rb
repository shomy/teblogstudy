server '13.112.172.46', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/shohei/.ssh/id_rsa'