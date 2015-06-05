class Micropost < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :comments, dependent: :destroy

	has_attached_file :file
	validates_attachment :file
	validates_attachment_content_type :file, not: %w(exe)
end
