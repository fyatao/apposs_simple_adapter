Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '470163475171.apps.googleusercontent.com', '6OrgJbadDqVbYD957bKVlxW3'
end
