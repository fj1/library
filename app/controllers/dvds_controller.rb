class DvdsController < ApplicationController

  def index
    @dvds = Dvd.all
    @new_dvd = Dvd.new(on_loan: false, viewed: false, is_digital: false, is_owned: false)
    @new_dvd.actors.build
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
    @new_dvd = Dvd.new(dvd_params)
    if @new_dvd.save
      actor_params.each do |name|
        actor = Actor.new(full_name: name)
        actor.save!
        ActorDvd.create!( {dvd_id: new_dvddvd.id, actor_id: actor.id} )
      end
      redirect_to '/dvds'
    else
      @dvds = Dvd.all 
      actor_params.each do |name|
        @new_dvd.actors.build(full_name: name)
      end
      render 'index'
    end
  end

  def edit
    @dvd = Dvd.find(params[:id])
  end

  def update
    @dvd = Dvd.find(params[:id])
    @dvd.update(dvd_params)
    # handling multiple actors in the edit form
    actor_params.each do |name|
      # try to find actor that is already assoc. with dvd id
      actor = @dvd.actors.find {|actor| actor.full_name == name}
      # if no match, then create new actor and dvd-actor relationship
      if actor.nil?
        actor = Actor.new(full_name: name)
        actor.save!
        ActorDvd.create!( {dvd_id: @dvd.id, actor_id: actor.id} )
      end
    end
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








