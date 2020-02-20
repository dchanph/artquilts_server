class Donatekit < ApplicationRecord
    has_many :craftkits
    has_many :crafts, through: :craftkits
end