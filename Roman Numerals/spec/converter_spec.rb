require 'converter'

describe RomanConverter do
    describe "the function convert" do
      context "when given the number 1" do
        it "returns I" do
          rc = RomanConverter.new
          expect(rc.convert(1)).to eql("I")
        end
      end

      context "when given the number 2" do
        it "returns II" do
          rc = RomanConverter.new
          expect(rc.convert(2)).to eql("II")
        end
      end
    end
end
