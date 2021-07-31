class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :username, :email, uniqueness: true

  has_many :servers,
    foreign_key: :owner_id,
    class_name: :Server,
    dependent: :destroy

  has_many :channels,
    through: :servers,
    source: :channels

  has_many :messages,
    foreign_key: :author_id,
    class_name: :Message,
    dependent: :destroy
end
