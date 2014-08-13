class Dvd < ActiveRecord::Base
  belongs_to :user

  has_many :actors, through: :actor_dvds
  has_many :actor_dvds
end
