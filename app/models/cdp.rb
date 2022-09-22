class Cdp < ApplicationRecord
    belongs_to :item
    has_many :cdp_movement
    has_many :rps

end
