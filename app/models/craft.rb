class Craft < ApplicationRecord
    has_many :craftkits
    has_many :donatekits, through: :craftkits
end
