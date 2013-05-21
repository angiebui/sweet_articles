class ArticlesController < ApplicationController

  def show

  end

  def redirect
    article = Article.find_by_url("articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}")

    redirect_to category_article_path(article.category, article)
  end

end
