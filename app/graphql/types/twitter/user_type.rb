# frozen_string_literal: true

module Types
  class Twitter::UserType < Types::BaseObject
    field :id, ID, null: false
    field :age, Integer
    field :name, String
    field :tweets, [Types::Twitter::TweetType]
  end
end
