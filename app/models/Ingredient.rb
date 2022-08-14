class Ingredient < ActiveRecord::Base
    has_many :recipes
    has_many :desserts, through: :recipes
end