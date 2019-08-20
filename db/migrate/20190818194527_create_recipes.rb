class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prep_time
      t.string :cooking_time
      t.integer :serves
      t.integer :user_id
      t.timestamps
    end
  end
end
