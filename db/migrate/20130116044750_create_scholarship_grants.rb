class CreateScholarshipGrants < ActiveRecord::Migration
  def change
    create_table :scholarship_grants do |t|
      t.string :organization
      t.string :scholarship
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
