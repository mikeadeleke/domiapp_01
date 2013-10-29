class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :title
      t.decimal :price
      t.integer :landlord_rating
      t.text :additional

      t.timestamps
    end
  end
end
