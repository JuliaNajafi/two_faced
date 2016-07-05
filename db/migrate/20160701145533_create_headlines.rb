class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :affiliation
      t.string :source
      t.references :issue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
