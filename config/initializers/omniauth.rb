keys = YAML.load_file("#{Rails.root}/config/omniauth.yml")

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github,  keys['github']['client'], keys['github']['secret']
end