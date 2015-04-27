require('rspec')
require('parcel')

describe('Parcel') do
  describe('#volume') do
    it('returns the volume of a package') do
      parcel_test = Parcel.new(5,5,4)
      expect(parcel_test.volume()).to(eq(100))
    end
  end

  describe('#cost_to_ship') do
    it('returns the shipping cost of the package') do
      parcel_test = Parcel.new(5,5,4)
      expect(parcel_test.cost_to_ship(10,1,100)).to(eq(11.00))
    end
  end
end
