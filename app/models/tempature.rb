class Tempature < ApplicationRecord
  def self.to_csv(days)
    if days.blank?
      days = 7
    end
    temp = Tempature.find_by_sql(
    ["Select * FROM tempatures WHERE id%15 = 0 AND created_at > ? ORDER BY created_at DESC LIMIT 10000", Time.now - days.to_i.days]
    )
    csv = ""
    csv << "time,temp\n"
    temp.each do |temp|
      csv << temp.created_at.to_s(:dygraph) + "," + temp.temp.to_s + "\n"
    end
    return csv
  end


end
