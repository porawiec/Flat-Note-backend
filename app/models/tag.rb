class Tag < ApplicationRecord
    has_many :notes, through: :notes_tags
end
