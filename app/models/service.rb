class Service < ActiveRecord::Base
validates :title, presence: true
  validates :image_url, presence: true
end
