require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "28b7c6fb720ab123b7ddd123e7b952745c8a92ec14584b67bedb0d86704a47e8"

  url_format "/media/:job/:name"
  
  fetch_file_whitelist [
    /files/
  ]

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
