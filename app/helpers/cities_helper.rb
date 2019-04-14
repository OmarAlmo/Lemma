module CitiesHelper

    def cities
        City.select(:name).pluck(:name, :id)
    end
    
end