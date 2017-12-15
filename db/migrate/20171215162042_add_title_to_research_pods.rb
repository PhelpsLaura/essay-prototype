class AddTitleToResearchPods < ActiveRecord::Migration[5.1]
  def change
    add_column :research_pods, :title, :string
  end
end
