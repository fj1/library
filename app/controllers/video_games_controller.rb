class VideoGamesController < ApplicationController
  def index
    @vgs = VideoGame.all
  end

  def show
  end
end
