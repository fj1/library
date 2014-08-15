class DvdsController < ApplicationController

  def index
    @dvds = Dvd.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @dvds }
    end
  end

  def show
    @dvd = Dvd.find(params[:id])
  end

  def new
    @dvd = Dvd.new
  end

  def create
    dvd = Dvd.new(dvd_params)
    actor = Actor.new(actor_params)
    dvd.save!
    actor.save!
    redirect_to root_path
    ActorDvd.create!( {dvd_id: dvd.id, actor_id: actor.id} )
  end

  def edit
    @dvd = Dvd.find(dvd_params[:id])
  end

  def update
    @dvd = Dvd.find(dvd_params[:id])
    @dvd.update(dvd_params)
    redirect_to root_path
  end

  # strong params
  private
  def dvd_params
    params.require(:dvd).permit(:title, :category, :comment,
      :on_loan, :viewed, :is_digital, :is_owned)
  end

  def actor_params
    params.require(:dvd).permit(:first_name, :last_name)
  end
end








