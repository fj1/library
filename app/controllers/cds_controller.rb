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
    # logic to check for .any? on musician
    # puts "NAMES: #{musician_names.inspect}"
    if musician_names.any? 
      musician_names.each do |name|
        musician = Musician.new(full_name: name)
        musician.save!
        CdMusician.create!( {cd_id: cd.id, musician_id: musician.id} )
      end
    end
    # logic to check for .any on ensemble
    puts "ENSEMBLES: #{ensemble_params.inspect}"
    # ensemble_params = ["Band Uno", "Band Segundo"]
    if ensemble_params.any?
      ensemble_params.each do |e|
        ensemble = Ensemble.new(name: e)
        ensemble.save!
        CdEnsemble.create!( {cd_id: cd.id, ensemble_id: ensemble.id} )
      end
    end
    redirect_to '/cds'
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def update
    @cd = Cd.find(params[:id])
    @cd.update(cd_params)
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

  def musician_names
    params[:cd][:full_name]
  end

  def ensemble_params
    params[:ensembles]
  end

end










