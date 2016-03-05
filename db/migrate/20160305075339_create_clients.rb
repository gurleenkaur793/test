class CreateClients < ActiveRecord::Migration
  def up
    create_table :clients do |t|
    	t.column "name" , :string ,:limit => 60
  		t.column "address" , :string , :limit => 150
  		t.column "designation" , :string , :null => false

      t.timestamps null: false
    end
  end
  def down
  	drop_table :clients
  end
end
