class CreateQuoteLists < ActiveRecord::Migration[7.0]
  def change
    create_table :quote_lists do |t|
      t.references :quote, null: false, foreign_key: true
      t.references :philosopher, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end