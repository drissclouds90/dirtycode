class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :desc
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
