class Gear
  include Mongoid::Document

  field :category, type: String
  field :brand, type: String
  field :year, type: Integer
  field :name, type: String
  field :attributes, type: Hash

end
