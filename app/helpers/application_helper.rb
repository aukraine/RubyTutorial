module ApplicationHelper

  def urls_to_images(s)
    s.gsub! /\s(https:\/\/.*?(\.png|jpg))\s/,
            '<p><img src="\1"/></p>'
    s.html_safe
  end

  def urls_to_links(s)
    s.gsub! /\s(https:\/\/.*?(\.png|jpg))\s/,
            '<a href="\1">image</a>'
    s.html_safe
  end

end
