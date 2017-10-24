class SpotifiesController < ApplicationController
  # POST /spotify
  def create
    @spotify = Spotify.connect
    render json: @spotify
  end
end
