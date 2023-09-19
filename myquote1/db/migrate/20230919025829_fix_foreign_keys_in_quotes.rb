class FixForeignKeysInQuotes < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :quote_lists, :philosophers
    remove_column :quote_lists, :philosopher_id

    add_column :quotes, :philosopher_id, :integer
    add_foreign_key :quotes, :philosophers
  end
end
