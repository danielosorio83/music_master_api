require 'rails_helper'

RSpec.describe Spotify, type: :model do
  describe 'Public Class Method' do
    describe '.connect' do
      it 'calls `RestClient.post`' do
        request_body = { grant_type: 'client_credentials' }
        auth_header = Spotify.auth_header
        expect(RestClient).to receive(:post).with(Spotify::TOKEN_URI, request_body, auth_header).and_call_original
        Spotify.connect
      end
    end

    describe '.auth_header' do
      it 'returns a valid hash' do
        client_id = Rails.application.secrets.spotify_client_id
        client_secret = Rails.application.secrets.spotify_client_secret
        authorization = Base64.strict_encode64 "#{client_id}:#{client_secret}"
        expect(Spotify.auth_header).to eq({ 'Authorization' => "Basic #{authorization}" })
      end
    end
  end
end