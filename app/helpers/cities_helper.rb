module CitiesHelper

    def cities
        City.select(:name, :country_reference).pluck(:name, :id)
    end
    
end