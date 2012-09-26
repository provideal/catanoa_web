module ApplicationHelper
  
  def navigation_item(options, &block)
    css = (options[:item] == @navigation_item ? 'active' : '')
    css << ' ' + options[:class] if options[:class].present?
    css.strip!
    opts = css.present? ? {:class => css} : {}
    label = options[:label] || ''
    content_tag(:li, opts) do
      concat(link_to(label.html_safe, options[:path]) + (block_given? ? yield : ''))
    end
  end
  
  def headline(*titles)
    content_for :headline do
      tags = []
      titles.each do |t|
        tags << content_tag(:span, t)
        tags << tag(:br)
      end
      concat(tags.inject(:+))
    end 
  end
  
  def flash_message_class(type)
    case type
      when :alert
        "alert alert-error"
      when :error
        "alert alert-error"
      when :notice
        "alert alert-info"
      when :success
        "alert alert-info"
      else
        "alert #{type.to_s}"
    end
  end
  
end