class Actor < ActiveRecord::Base
  has_many :dvds, through: :actor_dvds
  has_many :actor_dvds

  validates :first_name, presence: true
  validates :last_name, presence: true
end
