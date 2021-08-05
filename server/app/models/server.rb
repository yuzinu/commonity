class Server < ApplicationRecord
  validates :name, :owner_id, presence: true

  has_many :channels,
    foreign_key: :server_id,
    class_name: :Channel,
    dependent: :destroy

  belongs_to :owner,
    foreign_key: :owner_id,
    class_name: :User
end
