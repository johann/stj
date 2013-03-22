class JobOpportunity < ActiveRecord::Base
	attr_accessible :department, :position, :description, :gpa, :contact, :mailto, :status, :division
	def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    job_opportunity = find_by_id(row["id"]) || new
   	job_opportunity.attributes = row.to_hash.slice(*accessible_attributes)
    job_opportunity.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Csv.new(file.path, nil, :ignore)
  when ".xls" then Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Excelx.new(file.path, nil, :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end
end
