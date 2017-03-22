class CustomField < ApplicationRecord
  belongs_to :user
  belongs_to :type

  has_many :options, inverse_of: :custom_field, dependent: :destroy
  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true

  has_many :contact_custom_fields, inverse_of: :custom_field
  has_many :contacts, :through => :contact_custom_fields
  accepts_nested_attributes_for :contact_custom_fields, reject_if: :all_blank, allow_destroy: true

  validates :label, presence: true
end
