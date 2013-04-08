class User < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :created_projects, class_name: 'Project', foreign_key: :creator_id
  has_many :likes

  has_many :participantships
  has_many :owned_projects, through: :participantships, source: :project

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.email = auth.info.email
      user.profile_picture_url = auth.info.image
      user.oauth_token = auth.credentials.token
      user.save!
    end
  end

  def facebook
  @facebook ||= Koala::Facebook::API.new(oauth_token)
  
  block_given? ? yield(@facebook) : @facebook
  rescue Koala::Facebook::APIError => e
    logger.info e.to_s
    nil # or consider a custom null object
end

end
