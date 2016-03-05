class Product < ActiveRecord::Base

	validates :title, :description, :image_url, presence: true

	#Numericalmente maior ou igual a 0.01, isso pq levamos em conta apenas 2 casa decimais no banco
	validates :price, numericality: {greater_than_or_equal_to: 0.01} 

	validates :title, uniqueness: true

	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png\Z)}i,
		message: 'must be a URL for GIF, JPG or PNG image'
	}
end
