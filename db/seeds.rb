# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


# Mise à jour du prix de la patate toutes les heures pendants 1 mois
(0..720).each do |i|
    MarketPrice.create(date: Date.today + i.hour, price: rand(70.0..130.0))
end
