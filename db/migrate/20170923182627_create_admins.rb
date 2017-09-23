class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :Email
      t.string :Name
      t.string :Password

      t.timestamps
    end
  end
end
