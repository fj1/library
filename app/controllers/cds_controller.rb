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
    cd.save!
    # logic to check for .present on musician
    if musician_params[:first_name].present? || musician_params[:last_name].present?
      musician = Musician.new(musician_params)
      musician.save!
      CdMusician.create!( {cd_id: cd.id, musician_id: musician.id} )
    end
    # logic to check for .present on ensemble
    if ensemble_params[:name].present?
      ensemble = Ensemble.new(ensemble_params)
      ensemble.save!
      CdEnsemble.create!( {cd_id: cd.id, ensemble_id: ensemble.id} )
    end
    redirect_to '/cds'
  end

  def edit
    @cd = Cd.find(cd_params[:id])
  end

  def update
    @cd = Cd.find(params[:id])
    @cd.update(params.require(:cd).permit(:id))
    redirect_to '/cds'
  end

  def destroy
    @cd = Cd.find(params[:id])
    @cd.destroy
    render status: 200, json: { status: 200 }
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










