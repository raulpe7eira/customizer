class CustomField < ApplicationRecord
  belongs_to :type

  has_many :options, inverse_of: :custom_field, dependent: :destroy
  accepts_nested_attributes_for :options, reject_if: :all_blank, allow_destroy: true
end
