class Post < ApplicationRecord
  attr_accessor :picture_file
  before_validation :pic_to_path

  private
  def pic_to_path
    binding.pry
    self.image_path = picture_file.original_filename
  end
end
