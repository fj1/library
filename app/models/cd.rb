class Cd < ActiveRecord::Base
  belongs_to :user

  has_many :musicians, through: :cd_musicians
  has_many :cd_musicians

  has_many :ensembles, through: :cd_ensembles
  has_many :cd_ensembles

  # form validations
  validates :title, presence: true
  validates :category, presence: true
  # user can leave musician/ensemble/comment fields blank
  validates_inclusion_of :on_loan, :in => [true, false]
  validates_inclusion_of :listened, :in => [true, false]
  validates_inclusion_of :is_owned, :in => [true, false]
  validates_inclusion_of :is_digital, :in => [true, false]
end
