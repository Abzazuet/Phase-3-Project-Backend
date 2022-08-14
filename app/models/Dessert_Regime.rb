class Dessert_Regime < ActiveRecord::Base 
    has_many :desserts
    has_many :regimes
end