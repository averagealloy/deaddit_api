class Api::num1::PostsController < ApplicationController
    def index 
        @posts = Post.All

        render json: @posts, status: 200
    end 

    def show
        @post = Post.find(params[:id])

        render json: @post, status: 200
    end
    def create
        @post = Post.create(post_params)

        render json: @post, status: 200
    end 

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post, status: 200
    end 
    

    private 

    def post_params
        params.require(:post).permit(:title, :body)
    end 
end
