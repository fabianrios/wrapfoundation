class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.decimal :price
      t.decimal :multiple
      t.decimal :extended
      t.string :compatible
      t.string :version
      t.string :browser
      t.string :preprocessor
      t.string :category
      t.string :tag
      t.text :description
      t.string :screenshot
      t.string :exclusive
      t.string :preview
      t.string :term

      t.timestamps
    end
  end
end
