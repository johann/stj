class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.text :description
      t.float :gpa
      t.string :infourl
      t.date :due

      t.timestamps
    end
  end
end
