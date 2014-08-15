class CdsController < ApplicationController
  def index
    @cds = Cd.all
    respond_to do |format|
      format.html #index.html.erb
      format.json { render :json => @cds }
    end
  end

  def show
    @cd = Cd.find(params[:id])
  end

  def new
    @cd = Cd.new
  end

  def create
    cd = Cd.new(cd_params)
    musician = Musician.new(musician_params)
    ensemble = Ensemble.new(ensemble_params)
    cd.save!
    musician.save!
    ensemble.save!
    redirect_to root_path
    CdMusician.create!( {cd_id: cd.id, musician_id: musician.id} )
    CdEnsemble.create!( {cd_id: cd.id, ensemble_id: ensemble.id} )
  end

  def edit
    @cd = Cd.find(cd_params[:id])
  end

  def update
    @cd = Cd.find(cd_params[:id])
    @cd.update(cd_params)
    redirect_to root_path
  end

  #strong params
  private
  def cd_params
    params.require(:cd).permit(:title, :category, :comment,
      :on_loan, :listened, :is_digital, :is_owned)
  end

  def musician_params
    params.require(:cd).permit(:first_name, :last_name)
  end

  def ensemble_params
    params.require(:cd).permit(:name)
  end

end










