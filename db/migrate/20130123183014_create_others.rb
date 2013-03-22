class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :organization
      t.string :program
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
