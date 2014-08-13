class Cd < ActiveRecord::Base
  belongs_to :user

  has_many :musicians, through: :cd_musicians
  has_many :cd_musicians

  has_many :ensembles, through: :cd_ensembles
  has_many :cd_ensembles
end
