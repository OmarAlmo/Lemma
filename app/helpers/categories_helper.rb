module CategoriesHelper
    
    def categories
        Category.select(:name).pluck(:name, :id)
    end 
end