class Adventure < ApplicationRecord
  belongs_to :family
  belongs_to :family_member, optional: true
  has_many :contributions
end
