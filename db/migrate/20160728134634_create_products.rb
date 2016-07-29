class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :product_type_id
      t.jsonb :properties, null: false, default: "{}"

      t.timestamps null: false
    end
    add_index  :products, :properties, using: :gin
  end
end
