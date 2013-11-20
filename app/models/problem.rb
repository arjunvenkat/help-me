class Problem < ActiveRecord::Base
  has_many :user_problems
  has_many :users, through: :user_problems
end
