class Book < ActiveRecord::Base
  belongs_to :user

  has_many :authors, through: :author_books
  has_many :author_books 

  # form validations
  validates :title, presence: true
  validates :category, presence: true

  # user can leave comment blank, so no validation necessary
  # validates :comment
  
  # gotta validate differently for boolean
  # because false==blank and will fail presence:true
  validates_inclusion_of :on_loan, :in => [true, false]
  validates_inclusion_of :read, :in => [true, false]
  validates_inclusion_of :is_owned, :in => [true, false]
  validates_inclusion_of :is_digital, :in => [true, false]

end
