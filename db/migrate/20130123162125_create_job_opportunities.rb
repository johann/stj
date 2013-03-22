class CreateJobOpportunities < ActiveRecord::Migration
  def change
    create_table :job_opportunities do |t|
      t.string :division
      t.string :department
      t.string :position
      t.text :description
      t.float :gpa
      t.string :contact
      t.string :mailto
      t.string :status

      t.timestamps
    end
  end
end
