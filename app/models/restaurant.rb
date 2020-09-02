class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
