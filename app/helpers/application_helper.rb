module ApplicationHelper
  def gravatar_for(user, size = 30, title = user.name)
    image_tag gravatar_image_url(user.email, size: size), title: title, class: 'img-rounded'
  end
  
  def full_title(page_title = '')
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end