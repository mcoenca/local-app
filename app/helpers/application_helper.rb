module ApplicationHelper
  def error_message_for(object)
    render 'application/error_message', :object => object
  end

  def logged_in
    unless session[:bubble_id]
      return false
    else
      return {:name => session[:name]}
    end
  end
end
