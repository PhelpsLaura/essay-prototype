class CreateSources < ActiveRecord::Migration[5.1]
  def change
    create_table :sources do |t|
      t.string :title
      t.text :citation
      t.text :description
      t.text :readings
      t.references :essay, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
