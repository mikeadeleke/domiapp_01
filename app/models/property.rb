class Property < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
	has_many :assets, dependent: :destroy
	accepts_nested_attributes_for :assets, allow_destroy: true
end
