class Artist < ApplicationRecord
  has_and_belongs_to_many :users, uniq: true
  validates :name, uniqueness: true
end
