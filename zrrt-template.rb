##############################
# => Template:Zrrt
##############################
puts  "
  #############
  ZRRT TEMPLATE
  #############
  Zrrt is here to bootstrap thy rails
      "

# => Bootstrap:lets_do_some_cleaning
#Delete rails default home
remove_file 'public/index.html'


# => Boostrap:gemfile
#RSPEC Capybara Cucumber
puts  "
  Configuring BDD:
    RSPEC, Capybara, Cucumber
      "
gem_group :test, :development do
  gem "rspec-rails"
  gem "factory_girl_rails"
end
gem_group :test do
  gem "capybara"
  gem "guard-rspec"
end


#ZURB FOUNDATION
puts  "
  Configuring frontend framework:
    foundation.zurb
      "
gem_group :assets do  
  gem 'compass-rails'
  gem 'zurb-foundation'
end

#Adding a website
if yes?("Do you wanna add a \"website\"?\a")
  generate "controller", "website index"
  route "root to: 'website#index'"
end
    

#Kids, dont forget your GIT...:)
git :init
git :add => "."
git :commit => "-m \"First commit!\""


