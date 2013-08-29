json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :user_id, :picture, :background, :hobbies, :facebook, :linkedin, :twitter, :website, :nickname, :slug, :github, :phone
  json.url user_profile_url(user_profile, format: :json)
end
