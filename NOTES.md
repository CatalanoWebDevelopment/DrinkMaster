Need to create an edit and delete page for profile

# SQLite version 3.x
#   gem install sqlite3
#
#   Ensure the SQLite 3 gem is defined in your Gemfile
#   gem 'sqlite3'
#
default: &default
  adapter: sqlite3
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  database: db/development.sqlite3

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: db/test.sqlite3

production:
  <<: *default
  database: db/production.sqlite3
  
  
  To be loaded into the Recipe Model:
  
  
  def ingredients_attributes=(ingredients_attributes)
        ingredients_attributes.values.each do |ingredient_attributes|
            if ingredient_attributes[:name] != nil && ingredient_attributes[:name] != "" && ingredient_attributes[:name] != " "
                self.ingredients.find_or_initialize_by(ingredient_attributes)
            end
        end
    end
