class User < ApplicationRecord
    has_many :reviews
    has_many :recipes

    validates :username, presence: true
    validates :username, uniqueness: true 
    validates :username, format: { without: /\s/ } #validates no spaces
end
