class CreateResearchPods < ActiveRecord::Migration[5.1]
  def change
    create_table :research_pods do |t|
      t.text :body
      t.references :essay, foreign_key: true

      t.timestamps
    end
  end
end
