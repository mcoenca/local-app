class WelcomeController < ApplicationController
  def index
    @locale = I18n.locale
    render 'index'

  end

  def new
    render 'new'
  end

end
