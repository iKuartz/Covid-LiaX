# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @existing = User.find_by username:user_params[:username]
    if @existing.nil? 
      @user = User.new(user_params)
      if @user.save
        redirect_to root_path
      else
        render :new
      end
      return
    end
    message = "Este nome de usuário já existe."
    redirect_to login_path, notice: message
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
