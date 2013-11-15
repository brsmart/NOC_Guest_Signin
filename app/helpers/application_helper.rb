module ApplicationHelper
  def format_date(date)
    return date.localtime.strftime("%02m/%02d/%04Y @ %02H:%02M") unless date.nil?

    ""
  end
  def current_user_name
    user = User.find(current_user.id)
    user["email"]
  end
end
