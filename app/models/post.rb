class Post < ApplicationRecord
  validates :image_path, presence: true

  attr_accessor :image
  before_validation :pic_to_path

  private
  def pic_to_path
    self.image_path = image.original_filename
  end
end
