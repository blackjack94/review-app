class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end

    add_index :users, :email, unique: true
    add_column :users, :password_digest, :string
  end
end
