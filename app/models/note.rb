class Note < ApplicationRecord
  has_many :tags, through: :notes_tags
  belongs_to :user
end
