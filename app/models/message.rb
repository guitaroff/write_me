class Message < ApplicationRecord
  VALID_EMAIL_REGEX = /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  validates :name, :phone, :body, presence: true
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  russian_phone :phone, default_country: 7, validate: true
end
