# README

Rails Project 

Recipes 

Tables : 

User
-has_many :recipes 
-has_many :ingredients, through: :recipes 
<!-- -(has_many :recipes, through: :recipe_rating) -->
<!-- -has_many :ingredients -->
<!-- -has_many :recipe_ratings  -->
<!-- -has_many :comments  -->
-validates : name, password
-has_secure_password

Recipe 
-belongs_to :user 
-has_many :ingredient_qty
-has_many :Ingredients
-validates :name, uniqueness: true
-validates :name, presence: true
<!-- -has_many :comments -->


Ingredient 
-has_many :recipes, through: :ingredient_qty 
-has_many :ingredient_qty

Ingredient_qty 
-belongs to :recipe 
-belongs to :ingredient 



Nice to Have 
-------------------------------------
Comments 
-belongs to :recipe 
-belongs to :user 

Recipe_rating
-belongs_to :user
-belongs_to :recipe




1. rails new rails-portfolio project
2. create tables 
3. create routes
3. omniauth 
    -add gems 
    -add .env and add it to gitignore 
    -bundle install 
    -create home view + route + session-c and user model 









This README would normally document whatever steps are necessary to get the
application up and running.

Requirements
Use the Ruby on Rails framework.
posts belong to category and user 



Your models must:

• Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

• Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

Your application must provide standard user authentication, including signup, login, logout, and passwords.

Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

You must include and make use of a nested resource with the appropriate RESTful URLs.

• You must include a nested new route with form that relates to the parent resource

• You must include a nested index or show route

Your forms should correctly display validation errors. a. Your fields should be enclosed within a fields_with_errors class b. Error messages describing the validation failures must be present within the view.

Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

• Logic present in your controllers should be encapsulated as methods in your models.

• Your views should use helper methods and partials when appropriate.

• Follow patterns in the Rails Style Guide and the Ruby Style Guide.

Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
Example Domains
A Recipe Manager - Should provide the ability to browse recipes by different filters such as date created, ingredient count, rating, comments, whatever your domain provides. Additionally ingredients would need to be unique so that the first user that adds Chicken to their recipe would create the canonical (or atomic/unique/individual) instance of Chicken (the only row to ever have the name Chicken in the ingredients table). This will force a join model between ingredients and recipes and provide an easy way to group recipes by ingredients, which would be a great view to implement. Associating some user-centric data regarding recipes such as ratings or comments would further fill out the domain and provide some great learning experiences.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
