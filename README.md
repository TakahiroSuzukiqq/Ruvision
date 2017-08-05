# Basic Installation  
````  
Command Line    
  
$ rails new YOUR_APP_NAME --database=postgresql  
$ rake db:create  
$ rake db:migrate  
$ bundle install (after added gems)  
$ rails g devise:install  
$ rails g devise user  
$ rake db:migrate   
$ rails g controller pages home  
$ rails g scaffold "MODEL NAME & CONDITIONS"  
   eg: $ rails g scaffold Room price:integer description:text ~~~       
$ rake db:migrate  
$ rails g uploader "UPLOADER NAME (eg:Room)"  
$ rails g migration add_"ANY MODEL NAME"_to_"TABLE NAME" "ANY NAME:TYPE OF ATTRIBUTE"  
Create Booking table & `rake db:migrate`    
Add `approved` attribte to `bookings` table & `rake db:migrate`  
Creating charges controller   
Create Transaction model and attributes & rake db:migrate  
  
    

 * You can see each path by typing `$ rake routes` in your terminal   
 * You can see the room you created by typing `$ rails c` & `Room.all`(all the rooms) or `Room.last`    
 * You can add attributes to each post by typing like following. `b.update_attributes(user_id: 1)`  
 * With `Booking.cout` you can check booking approved data.    
   And you can also check status by typing `Booking.where(approved: false)` or `Booking.approved`    
````  
  
````  
Gem installation  
  
gem 'devise' 
gem 'bootstrap-sass', '~> 3.3.7'  
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'  
gem 'gravatar_image_tag'  
gem 'dotenv-rails', require: 'dotenv/rails-now'  
gem 'xmlrpc'   
gem 'carrierwave', '~> 1.0'  
gem 'stripe'    
````    
  
  
# Docs  
  * Devise :  
  [gem 'devise'](https://github.com/plataformatec/devise)  
  [Login/out](https://github.com/plataformatec/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template)
       
  * Foundation (styling) :     
    [Foundation docs](http://foundation.zurb.com/sites/docs/installation.html)  
    [Foundation apps](http://foundation.zurb.com/apps.html)  
    [Foundation kitchen sink](http://foundation.zurb.com/sites/docs/kitchen-sink.html)  
    [gem 'foundation-rails'](https://github.com/zurb/foundation-rails)   
    
  * Bootstrap (styling) :  
    [Bootstrap getting started](http://getbootstrap.com/getting-started/)  
    [gem 'bootstrap'](https://github.com/twbs/bootstrap-rubygem)  
      
  * Gravatar :  
    [gravator.com](https://en.gravatar.com/)  
    [gem 'gravatar-ultimate' for rails v. 3.1, 3.2, and 4.0](https://github.com/sinisterchipmunk/gravatar)    
   
  * Dotenv :  
    [gem 'dotenv-rails'](https://github.com/bkeepers/dotenv)              
      
  * Xmlrpc :  
    [gem 'xmlrpc'](https://github.com/ruby/xmlrpc)  
      
  * CarrierWave :
    [gem 'carrierwave'](https://github.com/carrierwaveuploader/carrierwave)   

  * Scope :  
    [Rails guide Scope](http://guides.rubyonrails.org/active_record_querying.html#scopes)    

  * Stripe :     
    [stripe.com](https://dashboard.stripe.com)    
    [stripe docs / checkout for rails](https://stripe.com/docs/checkout/rails)    
    [stripe test numbers and tokens](https://stripe.com/docs/testing#cards)  
    
    
            
# Issue & Solution  
 * "couldn't find file 'jquery' with type 'application/javascript" error
   In Rails 5.1.2, when I tried to implement Bootstrap and run on the local browser, the app said [couldn't find file 'jquery' with type 'application/javascript'](https://stackoverflow.com/questions/22582097/sprocketsfilenotfound-in-staticpageshome).        
   So just added [jquery-rails 4.3.1](https://rubygems.org/gems/jquery-rails/versions/4.3.1) in gem file and bundle install again.    
 <a href="https://ibb.co/iOj2LQ"><img src="https://image.ibb.co/kZuPZk/Screen_Shot_2017_08_02_at_15_09_38.png" alt="Screen_Shot_2017_08_02_at_15_09_38" border="0"></a>      
     
    
    
 * Gravatar    
   [gem 'gravatar-ultimate'](https://github.com/sinisterchipmunk/gravatar) is only supported for rails v3.1, 3.2, and 4.0+, and for some reason, I couldn't use it for rails v5.1.2 so I used [gem 'gravatar_image_tag'](https://github.com/mdeering/gravatar_image_tag), instead.    
    ````    
    <%= image_tag(gravatar_image_url(current_user.email.gsub('spam', 'mdeering'))) %>  
    ````      
        
             
    
 * Duplicate error    
   If you will see error associated with database - schama and will not be able to do rake db:migrate, google `duplicate erro ` or `rake db:drop` like [this](https://stackoverflow.com/questions/4116067/purge-or-recreate-a-ruby-on-rails-database). But I don't recommend to delete `rake db:drop` & recreate db because you'll lose your existing db. I don't take any responsibility to this error and all of the issues & problems associated with this project including README, as well.  

 * "User must exist" error    
  When trying to book below error had caused so passed user id inside the `def create` function in the booking controller.   
  <a href="https://ibb.co/hoPJCF"><img src="https://image.ibb.co/jF1bzv/Screen_Shot_2017_08_03_at_18_28_14.png" alt="Screen_Shot_2017_08_03_at_18_28_14" border="0"></a>  
    
  ````   
  def create  
    @booking = Booking.new(booking_params)  
    @booking.user_id = current_user.id  
    respond_to do |format|  
     ~~~~  
  end  
  ````  
    

# Note  
  ### Inspect  
  ````    
   <%= @room.images.inspect %>    
  ````  
      
  ### [number to currency](https://apidock.com/rails/ActionView/Helpers/NumberHelper/number_to_currency)      
  ````  
  <p>  
    <strong>Price:</strong>  
    <%= number_to_currency(@room.price) %>   #rails helper method to change a number into currency
  </p>    
  ````      
    
  ### Rails helper  
  create helper method to turn true / false boolean into Yes / No.  
  ````    
  def yes_or_no(input)   |    def yes_or_no(input)   |    def yes_or_no(input)    
    if input == true     |      if input             |      input ? 'Yes' : 'No'   
      'Yes'              |        'Yes'              |    end   
    else                 |      else                 |   
      'No'               |        'No'               |   
    end                  |      end                  |   
  end                    |    end                    |   
  ````     
      
  And change view page as following.         
  ````     
  <p>    
    <strong>Pets:</strong>       
    <%= yes_or_no(@room.pets)%>       
  </p>         
  ````           
    
  ### Send prameters to a link    
  ````      
  <%= link_to 'Book Now', new_booking_path(room_id: @room_id)%>   
  ````   

  ### Update attibute in your terminal       
    
<a href="https://ibb.co/mNC42F"><img src="https://image.ibb.co/hjQP2F/Screen_Shot_2017_08_04_at_18_21_34.png" alt="Screen_Shot_2017_08_04_at_18_21_34" border="0"></a>    
    
    
  
  ### Bash profile    
  ````  
  $ atom ~/.bash_profile  
  $ echo $"YOUR API KEY OR SECRET KEY NAME"
  ````  
    
  ### Migration rollback    
  ````
  $ rake db:rollback  
  ````  
    
      
      