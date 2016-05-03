class User <ActiveRecord::Base
    validates :username, presence:true, length: {minimum:5, mazimum: 25}, uniqueness: { case_sensitive: false }
    VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence:true, length: {minimum:15, mazimum: 50}, uniqueness: { case_sensitive: false }, format: {with: VALID_EMAIL_REGEX }
end
