module ApplicationHelper
  def not_on_homepage?
    if admin_signed_in?
      # Admin signed in and current controller isn't home
      if not current_page? root_path
        return true
      else
        return false
      end
    else
      false
    end
  end
end
