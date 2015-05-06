class Post < ActiveRecord::Base
  belongs_to :category
  validates :title, length: { maximum: 500 }, presence: true
  validates :link, presence: true, if: :link?
  validates :body, presence: true, if: :text?
  validates :category_id, presence: true
  enum post_type: [:link, :text]  #(enum) this converts a string to an integer (:link is 0, :test is 1) the database post_type is 0 or 1

end
