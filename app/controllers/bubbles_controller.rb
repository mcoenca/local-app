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
    else
      render('new')
    end
  end

  def bubble_params
    params.require(:bubble).permit(:name, :feeling)
  end

end
