class Api::Num1::PostsController < ApplicationController
    def index 
        @posts = Post.all

        render json: @posts, include:[:comments] , status: 200
    end 

    def show
        @post = Post.find(params[:id])

        render json: @post,include:[:comments],status: 200
    end
    def create
        @post = Post.new(post_params)
        # binding.pry
        @post.save
        render json: @post,include:[:comments], status: 200
    end 

    def update
        @post = Post.find(params[:id])
        
        @post.update(post_params)
        render json: @post,include:[:comments], status: 200
    end 
    
    def destroy
        @post = Post.find(params[:id])
        @post.delete
        render json: {postId: @post.id}
    end 

    private 

    def post_params
        params.require(:post).permit(:title, :content)
    end 
end
