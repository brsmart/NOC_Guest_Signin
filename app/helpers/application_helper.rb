module ApplicationHelper

  def format_date( date )
    return date.localtime.strftime( "%m.%d.%y @ %H:%M" ) unless date.nil?

    ""
  end

  def current_user_name
    user = User.find(current_user.id)
    user["email"]
  end
end
