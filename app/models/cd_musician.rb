class CdMusician < ActiveRecord::Base
  belongs_to :cd
  belongs_to :musician
end
