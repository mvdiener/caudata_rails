class Gear
  include Mongoid::Document
  field :category, type: String
  field :brand, type: String
end
