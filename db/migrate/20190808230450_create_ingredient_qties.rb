class CreateIngredientQties < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_qties do |t|
      t.string :quantity
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.timestamps
    end
  end
end
