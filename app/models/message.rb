class Message < ApplicationRecord
  validates :name, :email, :phone, :body, presence: true
end
