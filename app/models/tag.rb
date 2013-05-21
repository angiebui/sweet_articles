class Tag < ActiveRecord::Base
  attr_accessible :name, :article, :article_id

  has_and_belongs_to_many :articles

  validates :name, uniqueness: true
  
end
