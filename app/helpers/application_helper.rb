module ApplicationHelper
  # Sets base title
  def title
    base_title = "Inspiration Depot"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  # Logo definition for abstraction from header
  def logo
    logo = image_tag("background.png", :alt => "background")
  end
end
