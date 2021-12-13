class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :instructions
      t.integer :minutes_to_complete
      t.user :belongs_to

      t.timestamps
    end
  end
end
