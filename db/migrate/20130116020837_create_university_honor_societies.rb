class CreateUniversityHonorSocieties < ActiveRecord::Migration
  def change
    create_table :university_honor_societies do |t|
      t.string :organization
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
