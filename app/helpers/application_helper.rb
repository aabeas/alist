module ApplicationHelper

  def copyright_generator
    DiospilleViewTool::Renderer.copyright 'Alist', 'All rights reserved'
  end

  def nav_items
    [
      {
        url: users_path,
        title: 'Users'
      }
    ]

  end

  def nav_helper style, tag_type
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active? path
    "active" if current_page? path
  end

end
