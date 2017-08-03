# Installation  
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
$ rails g scaffold ANY_NAME_& CONDITIONS  
  eg: $ rails g scaffold Room price:integer description:text title:string user:references capacity:integer pets:boolean smoking:boolean wifi:boolean bathrooms:integer bath:boolean share:boolean parties:boolean   
$ rake db:migrate  
$ 

 * You can see each path by typing `$ rake routes` in your terminal   
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
````    
  
  
# Docs  
  * Devise :  
  [gem 'devise'](https://github.com/plataformatec/devise)  
  [Login/out](https://github.com/plataformatec/devise/wiki/How-To:-Add-sign_in,-sign_out,-and-sign_up-links-to-your-layout-template)
      
  * Styling :  
    Foundation      
    [Foundation docs](http://foundation.zurb.com/sites/docs/installation.html)  
    [Foundation apps](http://foundation.zurb.com/apps.html)  
    [Foundation kitchen sink](http://foundation.zurb.com/sites/docs/kitchen-sink.html)  
    [gem 'foundation-rails'](https://github.com/zurb/foundation-rails)   
    
  * Bootstrap :  
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
  
          
# Issue & Solution  
 * couldn't find file 'jquery' with type 'application/javascript  
 In Rails 5.1.2, when I tried to implement Bootstrap and run on the local browser, the app said [couldn't find file 'jquery' with type 'application/javascript'](https://stackoverflow.com/questions/22582097/sprocketsfilenotfound-in-staticpageshome).        
 So just added [jquery-rails 4.3.1](https://rubygems.org/gems/jquery-rails/versions/4.3.1) in gem file and bundle install again.  
 <a href="https://ibb.co/iOj2LQ"><img src="https://image.ibb.co/kZuPZk/Screen_Shot_2017_08_02_at_15_09_38.png" alt="Screen_Shot_2017_08_02_at_15_09_38" border="0"></a>    
   
  
  
 * Gravatar  
   [gem 'gravatar-ultimate'](https://github.com/sinisterchipmunk/gravatar) is only supported for rails v3.1, 3.2, and 4.0+, and for some reason, I couldn't use it for rails v5.1.2 so I used [gem 'gravatar_image_tag'](https://github.com/mdeering/gravatar_image_tag) instead.  
    ````  
    <%= image_tag(gravatar_image_url(current_user.email.gsub('spam', 'mdeering'))) %>
    ````    
      
        



       




     



   