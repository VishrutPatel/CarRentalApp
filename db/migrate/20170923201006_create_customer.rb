class CreateCustomer < ActiveRecord::Migration[5.1]
  def up
    create_table :customers do |t|
      t.string :Username
      t.string :Email
      t.integer :No_Of_Cars_Rented
      t.string :password_digest
      t.float :Rental_Charge
      t.string :role, :default=>"user"
      t.timestamps
    end
    def down
      drop_table :customers
    end

  end
end
