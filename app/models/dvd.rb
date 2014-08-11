class Dvd < ActiveRecord::Base
  belongs_to :user
  has_many :actors
end
