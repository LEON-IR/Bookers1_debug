class User < ApplicationRecord
	 devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :validatable

          has_many :books
          has_many :book_images, dependent: :destroy

          validates :title,presence: true
	      validates :body,presence: true

end
