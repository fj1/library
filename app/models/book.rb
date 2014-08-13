class Book < ActiveRecord::Base
  belongs_to :user

  has_many :authors, through: :author_books
  has_many :author_books 

end
