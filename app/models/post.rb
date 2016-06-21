class Post < ActiveRecord::Base
	has_many :comments
	validates :title, presence: true, length:{ minimum: 5, maximum: 400 }
	validates :content, presence: true, length:{ minimum: 5, maximum: 400 }
	belongs_to :user
end
