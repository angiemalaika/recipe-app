class User < ActiveRecord::Base
    has_secure_password
    validates :email, presence: true
    validates :email, uniqueness:  true
    has_many :recipes 
    has_many :ingredients, through: :recipes 

    # def self.create_with_omniauth(auth)
    #   create! do |user|
    #     user.provider = auth["provider"]
    #     user.uid = auth["uid"]
    #     user.name = auth["info"]["name"]
    #   end
    # end

    def self.find_or_create_by_omniauth(auth)
      # oauth_email = auth["omniauth.auth"]["info"] ["email"]
      self.where(:email => auth["info"]["email"]).first_or_create do |user|
        user.password = SecureRandom.hex
  #  if  user = User.find_by(:email => oauth_email)
  #     return user 
  #         # session[:user_id] = @user.id 
  #         # redirect_to root_path
  #      else
  #       user = User.create(:email => oauth_email, :password => SecureRandom.hex )
  #     #      if user.save
      #     session[:user_id] = user.id 
      #      redirect_to root_path
      #  else 
      # raise user.errors.inspect
   end 
  end 
end 
 