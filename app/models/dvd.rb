class Dvd < ActiveRecord::Base
  belongs_to :user

  has_many :actors, through: :actor_dvds
  has_many :actor_dvds

  # form validations
  validates :title, presence: true
  validates :category, presence: true
  validates_inclusion_of :on_loan, :in => [true, false]
  validates_inclusion_of :viewed, :in => [true, false]
  validates_inclusion_of :is_owned, :in => [true, false]
  validates_inclusion_of :is_digital, :in => [true, false]
end
