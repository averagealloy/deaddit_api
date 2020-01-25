class Api::Num1::CommentsController < ApplicationController
    def index
        # post = Post.find(params[:post_id])
        comments = Comment.all
        render json: comments, status: 200
    end
    def show
        comment = Comment.find(params[:id])
        render json: comment, status: 200
    end 

    def create
        # post = Post.find(params[:post_id]) just in case
        comment = Comment.new(comment_params)
        comment.save
        render json: comment, status: 200
        
    end 

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
        render json: comment, status: 200
    end 

    def destroy
        comment = Comment.find(params[:id])
        comment.delete
        render json: { message: "there goes your comment"}
    end

    private 
    
    def comment_params
        params.require(:comment).permit(:post_id, :the_comment)
    end 
end 