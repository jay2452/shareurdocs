class AddUserInfoUser < ActiveRecord::Migration
  def change
  	add_column :users, :name, :string
  	add_column :users, :address, :text
  	add_column :users, :pin, :integer
  	add_column :users, :mobile, :integer
  end
end
