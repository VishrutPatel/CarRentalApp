class CreateSuperAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :super_admins do |t|
      t.string :Name
      t.string :Password
      t.string :Email

      t.timestamps
    end
  end
end
