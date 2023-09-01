class CreateQuotes < ActiveRecord::Migration[7.0]
  def change
    create_table :quotes do |t|
      t.text :quote_text, null: false
      t.integer :publication_year
      t.text :comment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
