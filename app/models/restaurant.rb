# app/models/restaurant.rb
# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, acceptance: { accept:
    %w[chinese italian japanese french belgian] }
end
