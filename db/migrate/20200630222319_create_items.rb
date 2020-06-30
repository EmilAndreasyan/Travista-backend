class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.string :size
      t.float :price
      t.boolean :in_stock
      t.string :color

      t.timestamps
    end
  end
end
