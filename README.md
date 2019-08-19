# README

Rails Project 

Recipes 

Tables : 

User
<!-- -has_many :recipes  -->
<!-- -has_many :ingredients, through: :recipes  -->
<!-- -(has_many :recipes, through: :recipe_rating) -->
<!-- -has_many :ingredients -->
<!-- -has_many :recipe_ratings  -->
<!-- -has_many :comments  -->
<!-- -validates : name, password -->
<!-- -has_secure_password -->
-add password lenghth validation 
-add admin bolean field validation 
-ass regular sessions login (sessions controller?)

Authentication 
-add email to user model 

Auth URLs
-get/signup 
-get/users/new   UsersController#new 
        -form 
-post/signup
-post/users UsersController#create 
        -create user in db 


get/login #= Sessions #new 
-form
post/login
-post/login #=Sessions #create


  def change
    add_column :users, :password_digest, :string
    add_column :users, :admin, :boolean, default:false
  end
end


class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :recipe, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end



Recipe 
<!-- -belongs_to :user  -->
<!-- -has_many :ingredient_qty
-has_many :Ingredients
-validates :name, uniqueness: true
-validates :name, presence: true -->
<!-- -has_many :comments -->


Ingredient 
<!-- -has_many :recipes, through: :ingredient_qty 
-has_many :ingredient_qty -->

Ingredient_qty 
<!-- -belongs to :recipe 
-belongs to :ingredient  -->



Nice to Have 
-------------------------------------
<!-- Comments 
-belongs to :recipe 
-belongs to :user  -->

Recipe_rating
-belongs_to :user
-belongs_to :recipe



1. rails new reipe
<!-- 2. create tables  -->
create table Users: 
create table Recipes :
create table Ingredients:

User ==> has many==> Recipes
Recipe ==>has many ==>Ingredients 
User==>has many==>Ingredients==>through==>Recipes 

2. Setup Login 

3. create controllers 
 Users 
 Recipe 
 Ingredients 



4. Create  routes /fix login logic 
    <!-- user controller actions and routes -->
    Recipes Controller and Routes 
    -Index, Show, Create, Edit, Update, Destroy 
    -Routes 
    

    Ingredients 
    ingredient_qty 
    comments 

5. form partials for new and edit actions 
6. test validations 
7. links + static about page 
8. User faker gem for seed data 













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

#session/new
 <div class="form-group">	
    <%= label_tag(:password, "Password:") %>	
    <%= password_field_tag(:password, nil, class: "form-control") %>	
  </div>	


#user/new

  <div class="form-group">	
    <%= f.label :name,"Name" %>	
    <br>	
    <%= f.text_field :name, class: "form-control" %>	
   </div>	



   <div class="form-group">	
    <%= f.label :password_digest, "Password" %>	
    <br>	
    <%= f.password_field :password_digest, class: "form-control" %>	
  </div>	

   <div class="form-group">

     <%= f.label :password_digest, "Comfirm Password" %>	
    <br>	
    <%=f.password_field :password_digest,class: "form-control"%>
    <br>
   </div> 





   <td><strong>Yummy Recipes</strong></td>	
<tbody>	
   <table cellpadding="5" cellspacing="10">
   <td><strong>Name</strong></td>
   <td><strong>Prep Time</strong></td>/
   <td><strong>Directions</strong></td>	
    </tr>
    <div class="recipes">
   <% @recipes .each do |recipe| %>	
        <div class ="recipe">
         <td><%= link_to recipe.name,recipe_path(recipe)%></td>	
        <td><%= recipe.prep_time %></td>	
            <td><%= recipe.directions%></td>
            <tr>
      </div>
   <% end %>	
      </tr>	
  </tbody>	
</table>	
<br>
<p>
<footer id="footer">
<% if current_user %>
<p>You are logged in as: <%= current_user.email %></p>
<p><%=link_to "Logout", logout_path%></p>
 <ul class ='recipe-actions'>
      <li><%= link_to "Edit", edit_user_recipe_path(@recipe) %><li>
      <li><%= link_to "Delete",recipe_path(recipe) , data: {confirm: "Are you sure you want to delete: #{recipe.name}?"}, method: :delete%><li>
      </ul>
  <% end %>
</footer>



Session#new 

<h1>Login</h1>

<%= form_tag '/login' do %>

  <div>Email: </div> <div><%= text_field_tag :email %></div>
   <div> Password: </div> <div><%= password_field_tag :password%>	</div>
   <div class="actions">	
    <%= submit_tag("login") %>	
  </div>	
<% end %>
<p><%= link_to "Login with Github", "/auth/github"%><p>


Users #_errors, new, show 
  <% if alert %>
      <div id="notice_wrapper" class="alert">
        <p class="alert"><%= alert %></p>
      </div>
    <% elsif notice %>
      <div id="notice_wrapper">
        <p class="notice"><%= notice %></p>
      </div>
    <% end %>


<%= form_for @user do |f| %>
  <%= render 'users/errors', form: @user %>
   <div class="form-group">	
    <%= f.label :email,"Email" %>	
    <br>	
    <%= f.email_field :email, class: "form-control" %>	
   </div>	
   <div class="actions">	
     <%= f.label :password, "Password" %>	
    <br>	
    <%=f.password_field :password,class: "form-control"%>
    </div>	
    
    <%= hidden_field_tag :authenticity_token, form_authenticity_token %>

   <div class="actions">	
    <%= f.submit class: "btn btn-primary" %>	
  </div>	
 <% end %> 
 <br>
<p><%= link_to "Singup with Github", "/auth/github"%><p>

  

  <p id="notice"><%= notice %></p>	
    <% if flash[:message] %>	
    <div class="center alert">	
    <p><%= flash[:message] %></p>	
    </div>	
        <% end %>	    
    <div class="center">	
   <div class="info">	
    <p><strong>Name:</strong> <%= @user.name %></p>	

    <p>My Recipes:</p>
    <% @user.recipes.each do |recipe| %>
    <div><%= recipe.name%></div>
    <% end %>
    <p><%= link_to 'View Recipes', user_recipes_path %></p>	
  </div>	
</div> 