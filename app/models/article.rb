class Article < ApplicationRecord
    scope :published, -> { where(published: true) }
    belongs_to :author
end