require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, 'f26122dc90864ee1827e4ab0939ad933', '2e848ff5b06b40d9b132c4dc43431909', scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end