class CreateHonorSocieties < ActiveRecord::Migration
  def change
    create_table :honor_societies do |t|
      t.string :name
      t.string :description
      t.string :mission
      t.float :gpa
      t.string :orgsync
      t.string :infourl
      t.string :applyurl
      t.string :major

      t.timestamps
    end
  end
end
