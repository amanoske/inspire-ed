class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
    	t.integer :project_id
    	t.boolean :generalist
    	t.string :title
    	t.string :description
    	t.string :keywords
    	t.integer :commitment_hours

     	t.timestamps
    end
  end
end
