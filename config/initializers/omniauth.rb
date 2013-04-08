OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_SECRET'], scope: "email, user_likes, friends_likes, user_activities, friends_activities, user_interests, friends_interests, user_education_history, friends_education_history, user_groups, friends_groups, user_location, friends_location "
end