module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "Podil, because sharing is caring"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def login_status
    if current_user.from_twitter?
      "This is twitter"
    if current_user.from_facebook?
      "Hello from facebook!"
    else
      "Houston, we have a problem."
    end
  end
  end

end
