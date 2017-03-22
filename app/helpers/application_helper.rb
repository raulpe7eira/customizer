module ApplicationHelper
  def current_controller?(name)
    controller_name == name
  end
end
