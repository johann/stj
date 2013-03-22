class CreateGreekOrganizations < ActiveRecord::Migration
  def change
    create_table :greek_organizations do |t|
      t.string :name
      t.text :description
      t.float :gpa
      t.string :applyurl

      t.timestamps
    end
  end
end
