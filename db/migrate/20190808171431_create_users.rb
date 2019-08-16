class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      # t.string :name
      t.string :email
      # t.string :password_digest 
     # t.string :provider
     # t.string :uid
      t.timestamps
      add_index :users, :id
    end
  end
end
