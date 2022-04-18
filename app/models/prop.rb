class Prop < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  validates :rent, numericality: { only_integer: true }, allow_blank: true
  validates :address, presence: true, length: { minimum: 5, maximum: 255}
  validates :years_old, numericality: { only_integer: true }, length: { maximum: 3}, allow_blank: true
  validates :comment, length: { maximum: 300 }
end
