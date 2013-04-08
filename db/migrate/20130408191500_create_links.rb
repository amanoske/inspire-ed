class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.integer :project_id
    	t.string :url
    	t.string :title

     	t.timestamps
    end
  end
end
