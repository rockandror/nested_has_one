class Organization < ActiveRecord::Base
  has_one :legal_representant, inverse_of: :organization
  accepts_nested_attributes_for :legal_representant, update_only: true
end
