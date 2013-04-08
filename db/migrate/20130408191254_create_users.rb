class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	#facebook attributes
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :provider
    	t.string :uid
    	t.string :oauth_token
    	t.string :profile_picture_url
    	t.text :description

    	t.timestamps
    end
  end
end
