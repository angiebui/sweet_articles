class ArticlesController < ApplicationController

  def show
    @category = Category.find_by_name params[:category_id]
    @article = @category.articles.find_by_title params[:id]

  end

  def redirect
    article = Article.find_by_url("articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}")

    redirect_to category_article_path(article.category, article)
  end

end
