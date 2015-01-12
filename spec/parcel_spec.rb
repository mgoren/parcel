require('rspec')
require('parcel')

describe(Parcel) do
  describe("#volume") do

    it("returns volume based on height, length, and width") do
      test_parcel = Parcel.new(5, 10, 2, 20)
      expect(test_parcel.volume()).to(eq(100))
    end

    it("returns a shipping cost based on parcel dimensions and weight") do
      test_parcel = Parcel.new(5, 10, 2, 20)
      expect(test_parcel.cost_to_ship()).to(eq(20))
    end

  end
end
