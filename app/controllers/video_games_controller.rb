class VideoGamesController < ApplicationController
  def index
    @vgs = VideoGame.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @vgs }
    end
  end

  def show
    @vg = VideoGame.find(params[:id])
  end

  def new
    @vg = VideoGame.new
  end

  def create
    vg = VideoGame.new(vg_params)
    vg.save!
    redirect_to '/video_games'
  end

  def edit
    @vg = VideoGame.find(vg_params[:id])
  end

  def update
    @vg = VideoGame.find(params[:id])
    @vg.update(params.require(:vg).permit(:id))
    redirect_to '/video_games'
  end

  def destroy
    @vg = VideoGame.find(params[:id])
    @vg.destroy
    render status: 200, json: { status: 200 }
  end

  # strong params
  private
  def vg_params
    params.require(:video_game).permit(:title, :console, :category,
      :comment, :on_loan, :played, :is_digital, :is_owned)
  end
end









