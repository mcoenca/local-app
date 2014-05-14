class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale, :set_selected


	def set_locale
    #If not set up in params, find it via IP
  		I18n.locale = params[:locale] || I18n.locale
      @locale = I18n.locale
	end

  def set_selected
    @fr_class = 'pure-menu-selected'
    @en_class = ''
    if @locale == :en then
      @fr_class = ''
      @en_class = 'pure-menu-selected'
    end
  end

end
