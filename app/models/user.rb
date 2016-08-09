class User < ApplicationRecord
  has_many :invites

  accepts_nested_attributes_for :invites, reject_if: :all_blank,
    allow_destroy: true

  validates :name, :email, :phone, :company, :position, presence: true
end
