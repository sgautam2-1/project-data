class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  validates :title, presence: true
  validates :description, presence: true
end
