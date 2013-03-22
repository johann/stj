class Scholarshipgrant < ActiveRecord::Base
	attr_accessible :scholarship, :description, :gpa, :infourl, :applurl, :organization
	def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    scholarshipgrant = find_by_id(row["id"]) || new
   	scholarshipgrant.attributes = row.to_hash.slice(*accessible_attributes)
    scholarshipgrant.save!
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
