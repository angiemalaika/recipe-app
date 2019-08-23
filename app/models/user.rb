class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
         has_many :recipes , dependent: :destroy
         #has_secure :pas
         has_many :favorite_recipes # just the 'relationships'
         has_many :favorites, through: :favorite_recipes, source: :recipe 
         validates :email, uniqueness: true
         validates :name, format: { without: /[0-9]/, message: "does not allow numbers" }

         devise :database_authenticatable, :registerable,
                :recoverable, :rememberable, :validatable,  :omniauthable, :omniauth_providers => [:github]

       def self.from_omniauth(auth)  
               where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
               user.provider = auth.provider
               user.uid = auth.uid
               user.email = auth.info.email
               user.password = Devise.friendly_token[0,20]
               end
       end

end
