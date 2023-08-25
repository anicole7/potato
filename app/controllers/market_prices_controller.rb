class MarketPricesController < ApplicationController
    def market_prices_list
        @list = MarketPrice.at_date(Date.parse params[:date] ? params[:date] : Date.today.to_s).as_json(only: [:date, :price])
    end

    def day_prices
        market_prices = MarketPrice.at_date(Date.parse params[:date] ? params[:date] : Date.today.to_s).pluck(:price)
    end

    def best_daily_benefit
        @max_benefit = 0
        @daily_prices = day_prices()

        # idx = 0 à n-1
        @daily_prices.each_with_index do |i, idx| 
            p1 = i

            # 1 + idx pour comparer avec les flucuations suivantes
            @daily_prices[1+idx..-1].each do |j| 
                p2 = j

                price_diff = p1 - p2
                if price_diff > @max_benefit
                    @max_benefit = price_diff 
                    @max = p1
                    @min = p2
                end
            end
        end
    end
end
