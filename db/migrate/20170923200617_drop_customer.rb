class DropCustomer < ActiveRecord::Migration[5.1]
  def up
    drop_table :customers
  end
end
