class AddAttachmentFotoToSeriados < ActiveRecord::Migration
  def self.up
    change_table :seriados do |t|
      t.attachment :foto
    end
  end

  def self.down
    drop_attached_file :seriados, :foto
  end
end
