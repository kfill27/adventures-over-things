class FamilyMember < ApplicationRecord
  belongs_to :family
  has_many :adventures
end
