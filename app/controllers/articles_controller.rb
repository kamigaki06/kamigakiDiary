class ArticlesController < ApplicationController
  def index
  	@article = Article.all 
  end

  def show 
  	@article = Article.find(params[:id])
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	@article.save
  	redirect_to '/articles'
  end

  def index
  	@articles = Article.all
  end

private
def  article_params
  params.require(:article).permit(:title, :body, :author)	
end

end

