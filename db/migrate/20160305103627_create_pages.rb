class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
    	t.integer "section_id"
    	t.string "name"
    	
    	t.integer "position"
    	t.boolean "visible" , :default=>false
    	t.string "content_type"
    	t.text "content"

      t.timestamps
    end
    add_index("pages", "section_id")
    
  end

  def down
  	drop_table :pages
  end
end