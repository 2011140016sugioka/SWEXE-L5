class UserController < ApplicationController
  def index
    @users = User.all
  end
  
  def new
    @users = User.new
  end
  
  def create
    @users = User.new(uid: params[:user][:uid], pass: params[:user][:pass])
    if @users.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/'
  end
  
end