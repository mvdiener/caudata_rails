class Gear
  include Mongoid::Document
  include Mongoid::Timestamps

  field :category, type: String
  field :brand, type: String
  field :model, type: String
  field :year, type: Integer
  field :specs, type: Hash
  field :name, type: String

end
