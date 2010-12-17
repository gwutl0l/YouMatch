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
      account_url
    if current_user.from_facebook?
      account_url
    else
      "Houston, we have a problem."
    end
  end
  end

  def account_url
      "http://facebook.com/#{self.login}"
    end
  
    def picture_url
      if self.login.include?('profile.php')
        "https://graph.facebook.com/#{self.login.gsub(/[^\d]/, '')}/picture?type=square"
      else
        "https://graph.facebook.com/#{self.login}/picture?type=square"
      end
    end

end
