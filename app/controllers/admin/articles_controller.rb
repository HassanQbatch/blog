class Admin::ArticlesController < ApplicationController

	http_basic_authenticate_with name: "dhh", password: "secret",
except: [:index, :show]

	def index
		@articles = Admin::Article.all
	end
	
	def show
		@article = Admin::Article.find(params[:id])
	end

	def new
		@article = Admin::Article.new
	end

	def edit
		@article = Admin::Article.find(params[:id])
	end

	def create
		#render plain: params[:article].inspect
		#@article = Article.new(params[:article])
		@article = Admin::Article.new(article_params)

		if @article.save
			flash[:success] = "Saved!"
			redirect_to @article
		else
			flash.now[:error] = "Errors"
			render 'new'
		end
	end

	def update
		@article = Admin::Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Admin::Article.find(params[:id])
		@article.destroy

		redirect_to admin_articles_path
	end

	private
	def article_params
		params.require(:article).permit(:title,:text)
	end

end
