class Customer < ActiveRecord::Migration[5.1]
  def up
    add_column :Customers, :role, :string, :default=>"user"
  end
end
