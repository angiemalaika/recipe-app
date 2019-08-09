class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.text :directions 
      t.string :time 
      t.timestamps
    end
  end
end
