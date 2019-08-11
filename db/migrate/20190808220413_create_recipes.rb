class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :directions 
      t.string :prep_time 
      t.string :cooking_time 
      t.string :level 
      t.string :serving_yield 
      t.timestamps
    end
  end
end
