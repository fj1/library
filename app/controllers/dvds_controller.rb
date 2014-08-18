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
    dvd.save!
    actor_params.each do |name|
      actor = Actor.new(full_name: name)
      actor.save!
      ActorDvd.create!( {dvd_id: dvd.id, actor_id: actor.id} )
    end
    redirect_to '/dvds'
  end

  def edit
    @dvd = Dvd.find(params[:id])
  end

  def update
    @dvd = Dvd.find(params[:id])
    @dvd.update(dvd_params)
    redirect_to '/dvds'
  end

  def destroy
    @dvd = Dvd.find(params[:id])
    @dvd.destroy
    render status: 200, json: { status: 200 }
  end

  # strong params
  private
  def dvd_params
    params.require(:dvd).permit(:title, :category, :comment,
      :on_loan, :viewed, :is_digital, :is_owned)
  end

  def actor_params
    params[:actors]
  end
end








