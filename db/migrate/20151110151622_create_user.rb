class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :second_name
    	t.string :email
    	t.string :password
    end
  end
end
