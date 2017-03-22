class Contact < ApplicationRecord
  has_many :contact_custom_fields, inverse_of: :contact, dependent: :destroy
  has_many :custom_fields, :through => :contact_custom_fields
  accepts_nested_attributes_for :contact_custom_fields, reject_if: :all_blank, allow_destroy: true

  validates :email, presence: true
end
