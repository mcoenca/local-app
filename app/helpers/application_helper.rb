module ApplicationHelper
  def error_message_for(object)
    render 'application/error_message', :object => object
  end
end
