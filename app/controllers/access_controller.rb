class AccessController < ApplicationController
  before_action :confirm_logged_in,
    :except => [:login, :attempt_login, :logout]
  def index
    #display things
  end

  def login
    #login form
  end

  def attempt_login
    if params[:name].present? && params[:password].present?
      found_user = Bubble.where(:name => params[:name]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      #Mark user as logged in
      session[:bubble_id] = authorized_user.id
      session[:name] = authorized_user.name

      flash[:notice] = t :you_are_now_logged_in
      redirect_to bubbles_path
    else
      flash[:notice] = t :invalid_password_name_combination
      render 'login'
    end
  end

  def logout
    #mark user as logout
    session[:bubble_id] = nil
    session[:name] = nil
    flash[:notice] = t :you_are_now_logged_out
    redirect_to '#'
  end

  private

  def confirm_logged_in
    unless session[:bubble_id]
      flash[:notice] = t :please_log_in
      redirect_to access_login_path
      return false
    else
      return true
    end
  end

end
