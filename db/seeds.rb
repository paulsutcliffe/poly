require 'factory_girl'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

FactoryGirl.create :admin

6.times do
  FactoryGirl.create :siete
end
