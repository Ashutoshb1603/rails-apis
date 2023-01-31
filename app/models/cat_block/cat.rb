module CatBlock
    class Cat < ApplicationRecord
        has_one_attached :picture 
        validates :name, presence: true
    end
end
