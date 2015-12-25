class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.string :orders_name
    	t.string :adress
      t.integer :count
    	t.timestamps 
    end
  end
end
