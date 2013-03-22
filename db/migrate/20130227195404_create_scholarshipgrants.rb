class CreateScholarshipgrants < ActiveRecord::Migration
  def change
    create_table :scholarshipgrants do |t|
      t.string :organization
      t.string :scholarship
      t.string :description
      t.float :gpa
      t.string :infourl
      t.string :applurl
      t.string :deadline

      t.timestamps
    end
  end
end
