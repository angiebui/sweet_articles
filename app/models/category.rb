class Category < ActiveRecord::Base
  attr_accessible :name, :article

  belongs_to :article

  validates :name, uniqueness: true

  # private
  # def set_url
  #   self.url = name.parameterize
  # end
end
