class HonorSociety < ActiveRecord::Base
	attr_accessible :description, :mission, :gpa, :orgsync, :infourl, :applyurl,:major, :name
	acts_as_taggable

  def self.import(file)
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    honor_society = find_by_id(row["id"]) || new
   	honor_society.attributes = row.to_hash.slice(*accessible_attributes)
    honor_society.save!
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
