class Author < ApplicationRecord
    has_and_belongs_to_many :genres
    has_many :books
  
    validates :name, presence: true
    validates :birth_date, presence: true
    validates :nationality, presence: true
  end
  
#   author can write books in various genres, and each genre can have multiple authors.