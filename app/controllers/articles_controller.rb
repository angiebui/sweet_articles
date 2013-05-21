class ArticlesController < ApplicationController

  def show

  end

  def redirect
    article = Article.find_by_title(params[:title])
    categories = article.categories

    redirect_to category_article_path(article, categories)
  end

end
