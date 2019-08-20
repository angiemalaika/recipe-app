class RemoveDirectionsFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :directions
  end
end
