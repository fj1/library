class Cd < ActiveRecord::Base
  belongs_to :user
  has_many :musicians
  has_many :ensembles
end
