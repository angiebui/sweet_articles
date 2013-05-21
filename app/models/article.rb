class Article < ActiveRecord::Base
  has_many :categories
  has_many :tags
  before_create :set_url

  attr_accessible :category, :tags, :description, :url, :title 

  private
  def set_url
    time = Time.now
    self.url = "articles/#{time.month}/#{time.day}/#{time.year}/#{self.title.downcase.gsub(' ', '-')}"
  end
end
