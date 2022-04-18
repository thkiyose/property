class Prop < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50}
  validates :rent, format: { with: /\A[0-9]\z/ }
  validates :years_old, format: { with: /\A[0-9]\z/ }, length: { maximum: 3}
  validates :comment, length: { maximum: 300 }
end
