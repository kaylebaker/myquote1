class ChangeNullConstraintInPhilosophers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :philosophers, :lname, true
  end
end
