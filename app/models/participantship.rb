class Participantship < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :role
  belongs_to :project
  belongs_to :user
  
end
