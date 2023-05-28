# frozen_string_literal: true

module Types
  class CreateUserInputType < BaseInputObject
    argument :age, Integer
    argument :name, String
  end
end
