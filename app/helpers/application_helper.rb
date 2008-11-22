# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def timeago(time, options = {})
    options[:class] ||= "timeago"
    content_tag(:abbr, time.strftime("%b %d, %Y, %I:%M %p"), options.merge(:title => time.strftime("%b %d, %Y, %I:%M %p"))) if time
  end
  
end
