class Invite < ApplicationRecord
  belongs_to :user

  validates :name, :email, presence: true
end
