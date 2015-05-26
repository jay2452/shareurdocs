class AddCategoryReferenceToMicropost < ActiveRecord::Migration
  def change
  	add_reference :microposts, :category, index: true
    add_foreign_key :microposts, :categories
  end
end
