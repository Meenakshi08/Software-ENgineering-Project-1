class FurnitureSpare < ActiveRecord::Base
  #attr_accessible :SparePartID, :SparePartName, :Material, :Color, :QuantityAvailable, :Price, :Description
  #belongs_to :Manufacturer
 # validates :SparePartID, :SparePartName
  validates_presence_of :SparePartID, :SparePartName
end
