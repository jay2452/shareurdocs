class AddUserReferenceToMicropost < ActiveRecord::Migration
  def change
    add_reference :microposts, :user, index: true
    add_foreign_key :microposts, :users
  end
end
