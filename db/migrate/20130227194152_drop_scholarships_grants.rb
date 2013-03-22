class DropScholarshipsGrants < ActiveRecord::Migration
  def up
  	drop_table :scholarship_grants
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
