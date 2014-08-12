class DvdsController < ApplicationController
  def index
    @dvds = Dvd.all
  end

  def show
  end
end
