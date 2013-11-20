json.array!(@user_problems) do |user_problem|
  json.extract! user_problem, :user_id, :problem_id
  json.url user_problem_url(user_problem, format: :json)
end
