require "strftime_jp_week/version"
require "date"
require "strftime_jp_week/date"
require "strftime_jp_week/date_time"
require "strftime_jp_week/time"

module StrftimeJPWeek
  JP_WEEK = ["日", "月", "火", "水", "木", "金", "土"].freeze
  def strftime(format = nil)
    if format.nil?
      super()
    else
      super(format.gsub("%jpw", JP_WEEK[wday]))
    end
  end
end



