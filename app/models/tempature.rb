class Tempature < ApplicationRecord
  def self.to_csv
    temp = Tempature.find_by_sql(
      %{
        Select * FROM tempatures WHERE id%13 = 0 ORDER BY created_at DESC LIMIT 10000
      }
    )
    csv = ""
    csv << "time,temp\n"
    temp.each do |temp|
      csv << temp.created_at.to_s(:dygraph) + "," + temp.temp.to_s + "\n"
    end
    return csv
  end


end
