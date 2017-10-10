module ApplicationHelper
  def active_class_color(url)
    controller_name == url ? "active_class_color" : nil
  end
end
