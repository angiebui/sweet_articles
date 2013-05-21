class ArticlesController < ApplicationController

  def show

  end

  def redirect
    article = Article.find_by_url("articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}")
    categories = article.categories

    redirect_to category_article_path(categories, article)
  end

end
