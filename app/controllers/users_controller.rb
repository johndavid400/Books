class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    
  end


  def create 
    @user = User.new(params[:user])
    if @user.save
      redirect_to "/", :notice => "Signed up"
    else
      render "new"
    end
  end
end
