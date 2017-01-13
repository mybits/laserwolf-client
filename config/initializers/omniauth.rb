require 'omniauth-laserwolf'

OmniAuth.config.full_host = "http://localhost:3001"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :laserwolf, Rails.application.secrets.laserwolf_client_id, Rails.application.secrets.laserwolf_client_secret
end
