class Mutations::CreateTweet < Mutations::BaseMutation
    argument :user_id, Int
    argument :article, String

    field :tweet, ::Types::Twitter::TweetType
    field :message, String
  
    def resolve(user_id:, article:)
        tweet = ::Tweet.create(user_id: user_id, article: article)

        {
            tweet: tweet,
            message: 'success'
        }
    end
end