require 'cash_register_class'

describe "Cash_register" do
  describe "the function make_change" do
    context "given a change of $1" do
      it "returns 1 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(1)).to eql([0, 1])
      end
    end

    context "given a change of $4" do
      it "returns 4 $1 bills" do
        change = Cash_register.new
        expect(change.make_change(4)).to eql([0, 4])
      end
    end

    context "given a change of $5" do
      it "returns 1 $5 bill" do
        change = Cash_register.new
        expect(change.make_change(5)).to eql([0, 1, 0])
      end
    end

    context "given a change of $6" do
      it "returns 1 $5 bill and 1 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(6)).to eql([0, 1, 1])
      end
    end

    context "given a change of $7" do
      it "returns 1 $5 bill and 2 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(7)).to eql([0, 1, 2])
      end
    end

    context "given a change of $9" do
      it "returns 1 $5 bill and 4 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(9)).to eql([0, 1, 4])
      end
    end

    context "given a change of $10" do
      it "returns 1 $10 bill" do
        change = Cash_register.new
        expect(change.make_change(10)).to eql([1, 0, 0])
      end
    end

  end
end
