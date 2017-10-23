class User < ApplicationRecord
  validates :firstname, :lastname, :email, :country, :city, :housenumber, :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :password, :password_confirmation, format: { with: /(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])/,
    message: "must have at least 1 uppercase latin letter, 1 downcase latin letter and 1 number"}
  validates :password, length: { minimum: 3, maximum: 6 }
  validates :housenumber , numericality: {only_integer: true}
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "incorect email"}
  validates :firstname, :lastname, length: { minimum: 3 }
end
