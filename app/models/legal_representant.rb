class LegalRepresentant < ActiveRecord::Base
  belongs_to :organization, inverse_of: :legal_representant
end
