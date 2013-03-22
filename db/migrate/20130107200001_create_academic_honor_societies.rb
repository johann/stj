class CreateAcademicHonorSocieties < ActiveRecord::Migration
  def change
    create_table :academic_honor_societies do |t|
      t.string :name
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
