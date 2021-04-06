class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to '/login'
    else params[:name]
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end
end

