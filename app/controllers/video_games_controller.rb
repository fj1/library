class VideoGamesController < ApplicationController

  def index
    @vgs = VideoGame.all
    @new_vg = VideoGame.new(on_loan: false, played: false, is_digital: false, is_owned: false)
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
    @new_vg = VideoGame.new(vg_params)
    if @new_vg.save
      redirect_to '/video_games'
    else
      @vgs = VideoGame.all 
      render 'index'
    end
  end

  def edit
    @vg = VideoGame.find(params[:id])
  end

  def update
    @vg = VideoGame.find(params[:id])
    @vg.update(vg_params)
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









