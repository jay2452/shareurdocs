class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :faculty, :boolean, default: false
    add_column :users, :student, :boolean, default: false
  end
end
