class AddAttachmentFileToMicroposts < ActiveRecord::Migration
  def self.up
    change_table :microposts do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :microposts, :file
  end
end
