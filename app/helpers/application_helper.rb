module ApplicationHelper
  def alert_class_for(flash_type)
    {
      success: "is-primary",
      error: "is-danger",
      alert: "is-warning",
      notice: "is-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def show_input_error(resource, attribute)
    return unless resource.errors.has_key?(attribute)

    resource.errors.full_messages_for(attribute).join(', ')
  end
end
