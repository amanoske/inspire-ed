class CreateParticipantships < ActiveRecord::Migration
  def change
    create_table :participantships do |t|
    	t.integer :project_id
    	t.integer :role_id
    	t.integer :user_id
    	t.string :application_status
    	t.text :application_message


     	t.timestamps
    end
  end
end
