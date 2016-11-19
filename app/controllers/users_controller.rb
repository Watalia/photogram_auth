class UsersController < ApplicationController

    def index
      @users = User.all
      render("users/index.html.erb")
    end

    def show
      @user = User.find(params[:id])
      @photo = Photo.new

      render("users/show.html.erb")
    end

    def my_likes
      @user = User.find(params[:id])
      @like = Like.new
      render("users/my_likes.html.erb")
    end


end
