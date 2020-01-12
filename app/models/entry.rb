class Entry < ApplicationRecord
  validates :name, presence: true
  validates :score, presence: true, numericality: { greater_than: 0 }
end
