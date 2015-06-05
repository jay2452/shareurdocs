class Category < ActiveRecord::Base
	acts_as_tree
	has_many :microposts, dependent: :destroy
end
