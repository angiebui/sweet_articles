class Category < ActiveRecord::Base
  attr_accessible :name, :article

  # has_many :articles

  validates :name, uniqueness: true

  # private
  # def set_url
  #   self.url = name.parameterize
  # end
end
