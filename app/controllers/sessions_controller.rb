# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if !!@user && @user.authenticate(params[:password])

      session[:user_id] = @user.id
      redirect_to '/dashboard'
    else

      message = 'Seu nome de usuário ou senha estão incorretos. Verifique-os, e tente novamente.'
      redirect_to login_path, notice: message
    end
  end

  def login
    redirect_to '/dashboard' unless session[:user_id].nil?
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
