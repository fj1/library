class CdEnsemble < ActiveRecord::Base
  belongs_to :cd 
  belongs_to :ensemble 
end
