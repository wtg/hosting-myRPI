Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cas, 
           host: 'cas-auth.rpi.edu', 
           url: 'https://cas-auth.rpi.edu/cas/',
           ssl: true
end