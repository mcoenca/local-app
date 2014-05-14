class BubblesController < ApplicationController

  def set_selected
    @fr_class = 'pure-menu-selected'
    @en_class = ''
    if @locale == :en then
      @fr_class = ''
      @en_class = 'pure-menu-selected'
    end
  end

  def index
    set_selected
    render 'index'
  end

  def new
    set_selected
    render 'new'
  end
end
