class AddIsPublicToQuote < ActiveRecord::Migration[7.0]
  def up
    add_column :quotes, :isPublic, :boolean
    Quote.reset_column_information
    Quote.all.each do |record|
      record.update_attribute :isPublic, true
    end
  end
end
