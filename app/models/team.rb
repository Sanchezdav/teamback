class Team < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user, inverse_of: :teams

  validates :name, presence: true, length: { minimum:3 }
end
