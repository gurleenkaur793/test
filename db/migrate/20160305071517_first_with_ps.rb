class FirstWithPs < ActiveRecord::Migration
  def up
  	create_table :customers do |t|
  		t.column "name" , :string ,:limit => 60
  		t.column "address" , :string , :limit => 150
  		t.column "designation" , :string , :null => false

  		t.timestamp
  	end
  end
  def down
  	drop_table :customers
  end
end
