class CdsController < ApplicationController

  def index
    @cds = Cd.all
    @new_cd = Cd.new(on_loan: false, listened: false, is_digital: false, is_owned: false)
    @new_cd.musicians.build
    @new_cd.ensembles.build
    respond_to do |format|
      format.html # index.html.erb
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
    @new_cd = Cd.new(cd_params)
    # cd.save will actually return true/false
    if @new_cd.save
      # logic to check for .any? on musician
      # puts "NAMES: #{musician_names.inspect}"
      if musician_names.any? 
        musician_names.each do |name|
          musician = Musician.new(full_name: name)
          musician.save!
          CdMusician.create!( {cd_id: @new_cd.id, musician_id: musician.id} )
        end
      end
      # logic to check for .any? on ensemble
      # puts "ENSEMBLES: #{ensemble_params.inspect}"
      if ensemble_params.any?
        ensemble_params.each do |e|
          ensemble = Ensemble.new(name: e)
          ensemble.save!
          CdEnsemble.create!( {cd_id: @new_cd.id, ensemble_id: ensemble.id} )
        end
      end
      redirect_to '/cds'
    else 
      @cds = Cd.all
      musician_names.each do |name|
        @new_cd.musicians.build(full_name: name)
      end
      ensemble_params.each do |name|
        @new_cd.ensembles.build(name: name)
      end
      render 'index'
    end
  end

  def edit
    @cd = Cd.find(params[:id])
  end

  def update
    @updated_cd = Cd.find(params[:id])
    @updated_cd.update(cd_params)
    musician_names.each do |name|
      # try to find musician that is already assoc. with cd id
      musician = @updated_cd.musicians.find {|musician| musician.full_name == name}
      # if no match, then create new musician and cd-musician relationship
      if musician.nil?
        musician = Musician.new(full_name: name)
        musician.save!
        CdMusician.create!( {cd_id: @updated_cd.id, musician_id: musician.id} )
      end    
    end
    # "ensembles"=>{"name"=>["asdf"]}
    # "ensembles"=>["asdf"]
    ensemble_params.each do |name|
      # try to find ensemble that is already assoc. with cd id
      ensemble = @updated_cd.ensembles.find {|ensemble| ensemble.name == name}
      # if no match, then create new ensemble and cd-ensemble relationship
      if ensemble.nil?
        ensemble = Ensemble.new(name: name)
        ensemble.save!
        CdEnsemble.create!( {cd_id: @updated_cd.id, ensemble_id: ensemble.id} )
      end
    end
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










