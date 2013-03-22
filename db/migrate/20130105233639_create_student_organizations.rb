class CreateStudentOrganizations < ActiveRecord::Migration
  def change
    create_table :student_organizations do |t|
      t.string :name
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
