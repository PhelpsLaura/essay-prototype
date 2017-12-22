class AddCleanedToSections < ActiveRecord::Migration[5.1]
  def change
    add_column :sections, :cleaned, :text
  end
end
