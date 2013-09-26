class Example < ActiveRecord::Base
  attr_accessible :description, :slug, :title


  extend FriendlyId
  friendly_id :title, use: :slugged
end
