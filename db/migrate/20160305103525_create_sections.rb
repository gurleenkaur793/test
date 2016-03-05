class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
    	t.integer "subject_id"
    	t.string "name"
    	t.integer "position"
    	t.boolean "visible", :default=>false
    	t.string "permalink"
    	

      t.timestamps
    end
    add_index("sections","permalink")
    add_index("sections","subject_id")


	end
  def down
  	drop_table :sections
  end
end
