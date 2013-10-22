class Household < ActiveRecord::Base
    has_secure_password
    attr_accessible :username, :email, :password, :password_confirmation
    before_save :create_remember_token

    has_many :members
    has_many :chores
    has_many :supplies

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 6}
    validates :password_confirmation, presence: true

    def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
    end


end
