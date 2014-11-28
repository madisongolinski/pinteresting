class AddAttachmentImageToPins< ActiveRecord::Migration
  def change
    add_column :pins, :description, :string
  end
end