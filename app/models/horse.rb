class Horse < ApplicationRecord
  belongs_to :user
  belongs_to :stable
  validates :stable, uniqueness: true
end
