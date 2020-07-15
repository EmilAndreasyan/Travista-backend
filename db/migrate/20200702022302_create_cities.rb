class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :country_id
      t.string :name
      t.string :image_url
      t.integer :population
      t.string :description
      t.text :comment

      t.timestamps
    end
  end
end
