class User < ApplicationRecord
    validates :name, :dob, :email, :phone_number, presence: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  end