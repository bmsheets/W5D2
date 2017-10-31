class Post < ApplicationRecord
  validates :title, presence: true

  belongs_to :author,
    primary_key: :id,
    foreign_key: :author_id,
    class_name: :User,
    optional: true

  belongs_to :sub
end
