class CreateDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :docs do |t|
      t.string :name
      t.references :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
