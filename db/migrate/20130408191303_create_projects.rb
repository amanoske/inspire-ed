class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string :title
    	t.integer :creator_id
    	t.string :tagline
    	t.text :description
    	t.string :video_url

    	t.timestamps
    end
  end
end
