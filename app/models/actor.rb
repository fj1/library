class Actor < ActiveRecord::Base
  has_many :dvds, through: :actor_dvds
  has_many :actor_dvds

  validates :full_name, presence: true
end
