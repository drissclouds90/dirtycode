class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def new
    @article = article.new
    @category = Category.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @article }
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(allowed_params)
	redirect_to @article, notice: 'Article has been update :)'
    else
	render :edit
    end

end


private

  def allowed_params
    params.require(:article).permit(:title, :desc, :content, :author)
  end
end
