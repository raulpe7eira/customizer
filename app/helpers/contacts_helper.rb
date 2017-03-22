module ContactsHelper
  def setup_contact(contact)
    if !contact.user
        contact.user = current_user
    end

    if !contact.contact_custom_fields || contact.contact_custom_fields.length === 0
      contact.contact_custom_fields = Array.new
      CustomField.where(user_id: current_user.id).each do |cf|
        ccf = ContactCustomField.new
        ccf.contact = @contact
        ccf.custom_field = cf
        contact.contact_custom_fields.push(ccf)
      end
    end

    contact
  end
end
