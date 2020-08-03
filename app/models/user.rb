class User < ApplicationRecord
    has_many :reviews
    has_many :recipes
    has_many :rec_ingreds, through: :recipes

    validates :username, presence: true
    validates :username, uniqueness: true 
    validates :username, format: { without: /\s/ } #validates no spaces

    has_secure_password
    validates_length_of :password, :in => 6..20, :on => :create
    validates :password, :confirmation => true

end
