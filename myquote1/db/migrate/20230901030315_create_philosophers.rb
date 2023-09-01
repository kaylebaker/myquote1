class CreatePhilosophers < ActiveRecord::Migration[7.0]
  def change
    create_table :philosophers do |t|
      t.string :fname, null: false
      t.string :lname, null: false
      t.integer :birth_year
      t.integer :death_year
      t.text :biography, null: false

      t.timestamps
    end
  end
end
