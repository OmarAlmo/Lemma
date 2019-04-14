class City < ApplicationRecord

    def getCities
        @cities = City.select(:name)
    end
end
