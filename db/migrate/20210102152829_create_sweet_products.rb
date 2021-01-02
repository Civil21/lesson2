class CreateSweetProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :sweet_products do |t|
      t.string :name
      t.string :description
      t.boolean :sugar_substitute
      t.float :price
      t.string :content

      t.timestamps
    end
  end
end
