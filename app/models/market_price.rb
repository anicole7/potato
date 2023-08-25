class MarketPrice < ApplicationRecord
    scope :at_date, ->(date) { where("date >= ? AND date <= ?", date, date + 1.day) }
end
