class AddPaperclipToAssets < ActiveRecord::Migration
  def self.up
    add_attachment :properties, :file
  end

  def self.down
    remove_attachment :properties, :file
  end
end
