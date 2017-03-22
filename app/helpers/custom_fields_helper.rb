module CustomFieldsHelper
  def setup_custom_field(custom_field)
    if !custom_field.user
        custom_field.user = current_user
    end

    custom_field
  end
end
