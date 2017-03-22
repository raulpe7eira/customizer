class ContactCustomField < ApplicationRecord
  belongs_to :contact, inverse_of: :contact_custom_fields
  validates_presence_of :contact

  belongs_to :custom_field, inverse_of: :contact_custom_fields
  validates_presence_of :custom_field
end
