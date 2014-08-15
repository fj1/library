class VideoGame < ActiveRecord::Base
  belongs_to :user

  # form validations
  validates :title, presence: true
  validates :console, presence: true
  validates :category, presence: true
  validates_inclusion_of :on_loan, :in => [true, false]
  validates_inclusion_of :played, :in => [true, false]
  validates_inclusion_of :is_owned, :in => [true, false]
end
