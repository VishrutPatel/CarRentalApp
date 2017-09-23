class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :Status
      t.string :Model
      t.string :Manufacturer
      t.float :Rate
      t.string :License_Tag
      t.string :Style
      t.string :Location

      t.timestamps
    end
  end
end
