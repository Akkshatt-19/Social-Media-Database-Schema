class User < ApplicationRecord
    has_many :posts,dependent: :destroy
    has_many :comments,dependent: :destroy
    has_many :likes,dependent: :destroy
    validates :fname, length: { minimum: 2 ,message: "Please Enter First-name Carefully !!!"}
    validates :lname, length: { minimum: 2 ,message: "Please Enter Last-name Carefully !!!"}
    validates :password, length: { in: 6..20 ,message: "Please check password,It must contain atleast 6-20 letters !!!"}
    validates :email, format: {  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,message: "Please Enter Valid Email" }
end
