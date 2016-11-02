class Message < ApplicationRecord
  belongs_to :user
  belongs_to :arena

  after_create_commit { BroadcastMessageJob.perform_later self }
end
