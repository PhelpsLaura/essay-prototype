class AddPromptToEssays < ActiveRecord::Migration[5.1]
  def change
    add_column :essays, :prompt, :text
  end
end
