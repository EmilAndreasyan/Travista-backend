class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.integer :age
      t.string :gender
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end
