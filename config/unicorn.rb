# set path to application
app_path = File.expand_path("../../../..", __FILE__)
working_directory File.join(app_path, 'current')

# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen File.join(app_path, 'shared/unicorn.sock'), :backlog => 64

# Logging
stderr_path File.join(app_path, 'current/log/unicorn.log')
stdout_path File.join(app_path, 'current/log/unicorn.log')

# Set master PID location
pid File.join(app_path, 'shared/unicorn.pid')
