class Ensemble < ActiveRecord::Base
  has_many :cds, through: :cd_ensembles
  has_many :cd_ensembles

end
