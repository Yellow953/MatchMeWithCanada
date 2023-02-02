class CreateMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :materials do |t|
      t.string :name
      t.float :price
      t.string :link

      t.timestamps
    end
  end
end
