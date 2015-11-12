class AddAttachmentAvatarToDonkeys < ActiveRecord::Migration
  def self.up
    change_table :donkeys do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :donkeys, :avatar
  end
end
