class Upcoming < ActiveRecord::Base
	attr_accessible :description, :gpa, :infourl, :date, :organization
	def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    upcoming = find_by_id(row["id"]) || new
   	upcoming.attributes = row.to_hash.slice(*accessible_attributes)
   	upcoming.date = Time.at((upcoming.date - 25569).days).utc
    upcoming.save!
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
