class Option < ApplicationRecord
  belongs_to :custom_field, inverse_of: :options
  validates_presence_of :custom_field
end
