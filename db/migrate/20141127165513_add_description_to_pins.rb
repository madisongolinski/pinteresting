class AddAttachmentImageToPins< ActiveRecord::Migration
  def self.up
    change_table :pin do |t|
    	t.attachment :image
  end
end