module CategoriesHelper
    
    def categories
        Category.select(:id).pluck(:id, :name)
    end 
end
