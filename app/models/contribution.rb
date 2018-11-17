class Contribution < ApplicationRecord
  belongs_to :contributor
  belongs_to :adventure
end
