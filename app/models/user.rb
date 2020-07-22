class User < ApplicationRecord
    has_many :reviews
    has_many :recipes

    validates :username, presence: true, uniqueness: true 
end
