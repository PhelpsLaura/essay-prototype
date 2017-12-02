class AddBodyToResearch < ActiveRecord::Migration[5.1]
  def change
    add_column :researches, :body, :text
  end
end
