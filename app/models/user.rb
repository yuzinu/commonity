class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  has_many :servers,
    foreign_key: :owner_id,
    class_name: :Server,
    dependent: :destroy
end
