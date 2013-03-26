class Temporada < ActiveRecord::Base
  attr_accessible :numero, :seriado_id, :sinopse, :titulo

  belongs_to :seriado
  has_many :episodios
  
  validates :numero, :seriado_id, :presence => true
  validates :seriado_id, :numericality => { :only_integer => true, :greater_than => 0 }
end
