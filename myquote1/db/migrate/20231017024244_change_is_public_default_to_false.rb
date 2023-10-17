class ChangeIsPublicDefaultToFalse < ActiveRecord::Migration[7.0]
  def change
    change_column_default :quotes, :isPublic, from: nil, to: false
  end
end
