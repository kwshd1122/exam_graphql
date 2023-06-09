module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: ::Mutations::CreateUser
    field :create_tweet, mutation: ::Mutations::CreateTweet
  end
end
