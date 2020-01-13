class Api::num1::PostsController < ApplicationController
    def index 
        @posts = Post.All

        render json: @posts, status: 200
    end 

    def show
        @post = Post.find(params[:id])

        render json: @post, status: 200
    end
    
end
