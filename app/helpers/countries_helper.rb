module CountriesHelper
    def countries
        Country.select(:name).pluck(:name, :id)
    end
end