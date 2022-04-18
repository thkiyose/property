class Prop < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  validates :rent, format: { with: /^[0-9]+$/ }
  validates :years_old, format: { with: /^[0-9]+$/ }, length: { maximum: 3}
  validates :comment, length: { maximum: 300 }
end
