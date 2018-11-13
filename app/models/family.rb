class Family < ApplicationRecord
  has_many :family_members
  has_many :adventures
end
