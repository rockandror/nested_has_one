class Organization < ActiveRecord::Base
  has_one :legal_representant
  accepts_nested_attributes_for :legal_representant, update_only: true, allow_destroy: true
end
