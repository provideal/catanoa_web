module ApplicationHelper
  
  def navigation_item(options, &block)
    css = (options[:item] == @navigation_item ? 'active' : '')
    css << ' ' + options[:class] if options[:class].present?
    css.strip!
    label = options[:label] || ''
    content_tag(:li, :class => css) do
      concat(link_to(label.html_safe, options[:path]) + (block_given? ? yield : ''))
    end
  end
  
end
