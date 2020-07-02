class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.integer :country_id
      t.string :name
      t.string :image
      t.integer :population
      t.string :description

      t.timestamps
    end
  end
end
