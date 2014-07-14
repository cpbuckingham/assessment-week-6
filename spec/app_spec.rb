require "rspec"
require "app"


describe Amusement do

  before do
    @amusement =
      [
        {
          :id=>546,
          :name=>"Kalahari Resorts",
          :city=>"Wisconsin Dells",
          :state=>"Wisconsin",
          :country=>"United States"
        },
        {
          :id=>547,
          :name=>"Little Amerricka",
          :city=>"Marshall",
          :state=>"Wisconsin",
          :country=>"United States"
        }
      ]

    describe "amusements_in_hash_two" do
      it "returns array as a hash" do
        hash =
          {
            546 => {
              :id=>546,
              :name=>"Kalahari Resorts",
              :city=>"Wisconsin Dells",
              :state=>"Wisconsin",
              :country=>"United States"
            },
            547 => {
              :id=>547,
              :name=>"Little Amerricka",
              :city=>"Marshall",
              :state=>"Wisconsin",
              :country=>"United States"
            }
          }
        expect(AmusementFilter.new(@amusement).amusements_in_hash).to eq([hash])
      end
    end
  end
end
