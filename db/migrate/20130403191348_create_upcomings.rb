class CreateUpcomings < ActiveRecord::Migration
  def change
    create_table :upcomings do |t|
      t.string :organization
      t.text :description
      t.float :gpa
      t.string :infourl
      t.date :date

      t.timestamps
    end
  end
end
