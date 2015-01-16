class CreateFurnitureSpares < ActiveRecord::Migration
  def change
    create_table :furniture_spares do |t|
      t.string :SparePartID
      t.string :SparePartName
      t.string :Material
      t.string :Color
      t.string :Manufacturer
      t.integer :QuantityAvailable
      t.decimal :Price
      t.text :Description

      t.timestamps
    end
  end
end
