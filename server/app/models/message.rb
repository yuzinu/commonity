class Message < ApplicationRecord
  after_create :notify_subscriber_of_addition
  after_update :notify_subscriber_of_update
  after_destroy :notify_subscriber_of_deletion
  validates :body, :author_id, :messageable_id, :messageable_type, presence: true
  
  belongs_to :messageable,
    polymorphic: true

  belongs_to :author,
    foreign_key: :author_id,
    class_name: :User

  belongs_to :channel,
    foreign_key: :messageable_id,
    class_name: :Channel

  private

  def notify_subscriber_of_addition
    CommonitySchema.subscriptions.trigger("newMessage", {}, self)
  end

  def notify_subscriber_of_update
    CommonitySchema.subscriptions.trigger("updateMessage", {}, self)
  end

  def notify_subscriber_of_deletion
    CommonitySchema.subscriptions.trigger("deleteMessage", {}, self)
  end
end
