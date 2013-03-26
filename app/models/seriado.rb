class Seriado < ActiveRecord::Base
  attr_accessible :inicio, :nome, :status, :sinopse, :foto
  has_many :temporadas

  has_attached_file :foto, :styles => { :medium => "150x150>", :thumb => "50x50>" }, :default_url => "/images/:style/missing.png"  
  
  validates :nome, :presence => true
end
