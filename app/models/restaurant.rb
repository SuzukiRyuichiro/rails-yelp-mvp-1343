# frozen_string_literal: true

class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian].freeze

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  has_many :reviews, dependent: :destroy

  def country_flag
    case category
    when 'chinese'
      '🇨🇳'
    when 'italian'
      '🇮🇹'
    when 'japanese'
      '🇯🇵'
    when 'french'
      '🇫🇷'
    when 'belgian'
      '🇧🇪'
    else
      '🌎'
    end
  end
end
