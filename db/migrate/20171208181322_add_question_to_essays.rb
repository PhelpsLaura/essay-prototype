class AddQuestionToEssays < ActiveRecord::Migration[5.1]
  def change
    add_column :essays, :question, :text
  end
end
