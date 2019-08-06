class User < ApplicationRecord
  has_and_belongs_to_many :roles
  has_one_attached :avatar
  validates_format_of :email, :with => /\A[a-zA-Z0-9\._'-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}\z/, :allow_blank => true, :multiline => true
  validates_uniqueness_of :email
end
