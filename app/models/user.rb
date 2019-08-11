class User < ActiveRecord::Base
    #  has_secure_password
     validates :email, presence: true
     validates :email, uniqueness:  true
    has_many :recipes 
    has_many :ingredients, through: :recipes 


  
  end

    # def self.create_with_omniauth(auth)
    #   create! do |user|
    #     user.provider = auth["provider"]
    #     user.uid = auth["uid"]
    #     user.name = auth["info"]["name"]
    #   end
    # end
