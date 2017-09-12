class Article < ApplicationRecord
  validate :title, :body, presence: true
end
