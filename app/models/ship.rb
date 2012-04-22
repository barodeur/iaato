class Ship
  include Mongoid::Document

  field :name
  field :travelers, type: Integer, default: 0
  field :capacity, type: Integer
  #field :type
  field :position, type: Array

  belongs_to :operator

  validates :capacity, presence: true
  validates :name, uniqueness: true, presence: true

  attr_accessible :name, :travelers, :capacity, :position
end
