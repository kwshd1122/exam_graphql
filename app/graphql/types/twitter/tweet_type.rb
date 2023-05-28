# frozen_string_literal: true

module Types
  class Twitter::TweetType < Types::BaseObject
    field :id, ID, null: false
    field :article, String
    field :user_id, Integer, null: false
  end
end
