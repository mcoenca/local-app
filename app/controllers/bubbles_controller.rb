class BubblesController < ApplicationController

  def index
    @bubbles = Bubble.all
    render 'index'
  end

  def new
    @bubble = Bubble.new
  end

  def create
    @bubble = Bubble.new(bubble_params)
    if @bubble.save
      redirect_to(:action => 'index')
      flash[:notice] = t(:subject_create_successfully, name: @bubble.name )
    else
      flash[:error] = t(:subject_creation_error)
      render('new')
    end
  end

  def bubble_params
    params.require(:bubble).permit(:name, :feeling)
  end

end
