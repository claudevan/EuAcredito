class User < ApplicationRecord
  validates :name, :email, :phone, :company, :position, presence: true
end
