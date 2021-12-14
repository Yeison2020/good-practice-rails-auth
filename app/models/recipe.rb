class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :instructions, length: {minimum:20}
    belongs_to :user
end
