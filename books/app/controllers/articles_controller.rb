class ArticlesController < ApplicationController
def new
end

def create
 @article = Article.new(params[:article])

@article.save
redirect_to @article
end
def index
@articles = Article.all
end
private
def article_params
params.require(:article).permit(:title, :text)
end

end

{"title"=>"fir","text"=>"first"}