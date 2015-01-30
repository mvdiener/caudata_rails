class Gear
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user

  field :category, type: String
  field :brand, type: String
  field :model, type: String
  field :year, type: Integer
  field :spec, type: Hash
  field :name, type: String

  validates_presence_of :category, :brand

end
