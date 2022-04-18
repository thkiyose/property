class Prop < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  validates :rent, format: { with: /[0-9]/ }, allow_blank: true
  validates :address, presence: true, length: { minimum: 5, maximum: 255}
  validates :years_old, format: { with: /[0-9]/ }, length: { maximum: 3}, allow_blank: true
  validates :comment, length: { maximum: 300 }
end
