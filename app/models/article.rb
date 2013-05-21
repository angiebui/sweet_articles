class Article < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :tags
  before_create :set_url

  attr_accessible :category, :tags, :description, :url, :title 

  private
  def set_url
    self.url = title.parameterize
  end
end


