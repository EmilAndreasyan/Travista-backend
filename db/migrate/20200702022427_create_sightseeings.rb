class CreateSightseeings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightseeings do |t|
      t.integer :city_id
      t.string :category
      t.string :name
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
