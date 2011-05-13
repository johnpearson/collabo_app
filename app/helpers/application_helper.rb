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
  
  # Button definitions to include images in home page
  def button_up
    button_up = image_tag("buttonup.png", :alt => "buttonup")
  end
  
  def button_in
    button_in = image_tag("buttonin.png", :alt => "buttonin")
  end
end
