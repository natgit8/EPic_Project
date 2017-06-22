class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, through: :post_tags
  validates :name, uniqueness: true

  # def self.most_popular
  #   self.all.map do |tag|
  #     tag.pictures.length
  #   end
  # end

#   Tag.trending that will return a trending tag.
# This will be defined as the Tag from the last 10 pictures with the most comments.

end
