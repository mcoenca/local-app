class BubblesController < ApplicationController

#layout "admin"

  def index
    @bubbles = Bubble.all
    render 'index'
  end

  def new
    @bubble = Bubble.new
  end

  def add
    @buble= Bubble.new
  end

  def create
    @bubble = Bubble.new(bubble_params)
    if @bubble.save
      redirect_to bubbles_path
      flash[:notice] = t('bubbles.new.bubble_created_successfully', name: @bubble.name )
    else
      flash[:error] = t(:subject_creation_error)
      render('new')
    end
  end

  def bubble_params
    params.require(:bubble).permit(:name, :feeling, :password, :password_confirmation)
  end

end
