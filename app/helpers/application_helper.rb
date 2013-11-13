module ApplicationHelper
  def current_user_name
    user = User.find(current_user.id)
    user["email"]
  end
end
