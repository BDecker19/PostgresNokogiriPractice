class ArticlesController < ApplicationController
  
  def show
    @article = Article.find(params[:id])
  end
  
  def wiki
    @article = Article.find_by_title(params[:title])
    if @article
      render :template => 'articles/show'
    else
      render :file => 'public/404.html', :status => 404
    end
  end

  def index
    @articles = Article.find(:all, :order => "id", :limit => 5)
  end
  
end
