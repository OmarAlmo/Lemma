class Country < ApplicationRecord
    validates :name, uniqueness: true
    has_many :cities
end
