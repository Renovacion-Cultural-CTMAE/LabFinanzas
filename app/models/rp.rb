class Rp < ApplicationRecord
    belongs_to :cdp
    has_many :rp_movement
end
