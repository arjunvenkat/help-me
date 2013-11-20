class User < ActiveRecord::Base
  has_many :user_problems
  has_many :problems, through: :user_problems
end
