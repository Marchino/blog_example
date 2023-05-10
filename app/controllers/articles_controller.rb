class ArticlesController < ApplicationController
    def index
        @articles = Article.published
        respond_to do |format|
            format.html
            format.json do 
                render json: @articles.to_json
            end
        end
    end

    def show
        @article = Article.find(params[:id])
    end
end