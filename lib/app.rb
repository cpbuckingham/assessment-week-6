require "app_spec"

class Amusement

  def initialize(amusement)
    @amusement = amusement
  end

  def amusements_in_hash
    amusement_hash=[]
    @amusement.each do |hash|
      amusement_hash << hash
    end
    amusement_hash
  end

end

