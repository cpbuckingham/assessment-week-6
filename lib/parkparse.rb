class Parkparse


  def initialize(park_hash)
    @parks = park_hash
  end

  def index_by_id
    id_hash = {}
    @parks.each do |park|
      id_hash[park[:id]] = park
    end
    id_hash
  end

  def index_by_country
    id_hash = {}
    @parks.each do |park|
      id_hash[park[:country]] ||=[]
      id_hash[park[:country]] << park
    end
    id_hash
  end
end