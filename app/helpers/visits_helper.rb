module VisitsHelper
  def tabs( label, controller, action )
    if current_page?url_for(:controller => controller, :action => action)
      raw "<li class=\"active\">" + link_to( label , controller: controller, action: action ) + "</li>"
    else
      raw "<li>" + link_to( label, controller: controller, action: action ) + "</li>"
    end
  end
end
