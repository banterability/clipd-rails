# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def timeago(time, options = {})
    options[:class] ||= "timeago"
    content_tag(:abbr, time.strftime("%b %d, %Y, %I:%M %p"), options.merge(:title => time.strftime("%b %d, %Y, %I:%M %p"))) if time
  end
  
  def wb_truncate(text, length = 45, truncate_string = "...")
    return if text.nil?
    l = length - truncate_string.mb_chars.length
    text.mb_chars.length > length ? text[/\A.{#{l}}\w*\;?/m][/.*[\w\;]/m] + truncate_string : text
  end
  
end