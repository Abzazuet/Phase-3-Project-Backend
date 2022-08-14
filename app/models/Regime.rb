class Regime < ActiveRecord::Base
    has_many :dessert_regimes
    has_many :desserts, through: :dessert_regime
end