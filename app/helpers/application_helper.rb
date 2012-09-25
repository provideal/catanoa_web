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
  
end