class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :booktitle
      t.text :author
      t.integer :year
      t.date :published

      t.timestamps
    end
  end
end
