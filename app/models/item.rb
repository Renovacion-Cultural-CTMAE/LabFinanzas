class Item < ApplicationRecord
    has_many :dependences
    has_many :movement_items
    has_many :cdps
end
