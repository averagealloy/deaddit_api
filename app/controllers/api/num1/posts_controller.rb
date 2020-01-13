class Api::num1::DeaditController < ApplicationController
    def index 
        @posts = Post.All

        render json: @posts, status: 200
    end 
end
