class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.string :flag
      t.string :capital
      t.string :language
      t.string :currency
      t.float :area

      t.timestamps
    end
  end
end
