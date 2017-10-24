require 'base64'
require 'json'
require 'restclient'

class Spotify
  TOKEN_URI = 'https://accounts.spotify.com/api/token'

  class << self
    def connect
      request_body = { grant_type: 'client_credentials' }
      response = RestClient.post(TOKEN_URI, request_body, auth_header)
      JSON.parse(response)
    end

    def auth_header
      client_id = Rails.application.secrets.spotify_client_id
      client_secret = Rails.application.secrets.spotify_client_secret
      authorization = Base64.strict_encode64 "#{client_id}:#{client_secret}"
      { 'Authorization' => "Basic #{authorization}" }
    end
  end
end
