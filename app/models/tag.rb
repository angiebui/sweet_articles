class Tag < ActiveRecord::Base
  attr_accessible :name, :article, :article_id

  belongs_to :article

  validates :name, uniqueness: true
  
end
