class CreateGraduateAssistantships < ActiveRecord::Migration
  def change
    create_table :graduate_assistantships do |t|
      t.string :division
      t.string :department
      t.text :description
      t.float :gpa
      t.string :infourl
      t.string :applyurl

      t.timestamps
    end
  end
end
