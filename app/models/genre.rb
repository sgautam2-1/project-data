class Genre < ApplicationRecord
    has_and_belongs_to_many :authors
    has_many :books
  
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
  end
  
#  multiple authors can write books in the same genre, and an author can write books in multiple genres.