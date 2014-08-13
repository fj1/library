class Musician < ActiveRecord::Base
  has_many :cds, through: :cd_musicians
  has_many :cd_musicians
end
