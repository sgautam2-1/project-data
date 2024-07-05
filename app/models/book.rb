class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_one_attached :cover_image

  # Define ransackable associations
  def self.ransackable_associations(auth_object = nil)
    %w[author genre cover_image_attachment cover_image_blob]
  end
  def self.ransackable_attributes(auth_object = nil)
    ["birth_date", "created_at", "id", "name", "nationality", "updated_at"]
  end
  # You might also need to define ransackable attributes if necessary
  def self.ransackable_attributes(auth_object = nil)
    %w[title description published_date]
  end
  def self.ransackable_attributes(auth_object = nil)
    %w[id name birth_date nationality created_at updated_at]
  end
end
