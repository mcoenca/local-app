module BubblesHelper

  #example from ruby essentials that adds the good tag depending on the status
  def status_tag(integer, options={})
    options[:text] ||= ''
    if integer.even?
      content_tag(:span, options[:text], :class => 'status-even')
    else
      content_tag(:span, options[:text], :class => 'status-odd')
    end
  end

  def set_selected
    if I18n.locale == :en then
      return {:fr_c => '', :en_c => 'pure-menu-selected'}
    else
      return {:fr_c =>'pure-menu-selected', :en_c => ''}
    end
  end

end
