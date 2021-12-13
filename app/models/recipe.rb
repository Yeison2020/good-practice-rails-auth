class Recipe < ApplicationRecord
    validates :title, presence: true
    validates :instructions, length: {minimu:50}
    belongs_to :user
end
