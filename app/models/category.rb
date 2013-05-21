class Category < ActiveRecord::Base
  attr_accessible :name, :article

  belongs_to :article
end
