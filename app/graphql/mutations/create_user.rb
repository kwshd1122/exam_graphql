class Mutations::CreateUser < Mutations::BaseMutation
    argument :age, Int
    argument :name, String
    # argument :arg, ::Types::CreateUserInputType
  
    field :user, ::Types::Twitter::UserType
    field :message, String

    def resolve(age:, name:)
        user = ::User.create(age: age, name: name)

        {
            user: user,
            message: 'success'
        }
    end
end