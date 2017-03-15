require 'cash_register_class'

describe "Cash_register" do
  describe "the function make_change" do
    context "given a change of $1" do
      it "returns 1 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(1)).to eql([0, 0, 0, 0, 0, 1])
      end
    end

    context "given a change of $4" do
      it "returns 4 $1 bills" do
        change = Cash_register.new
        expect(change.make_change(4)).to eql([0, 0, 0, 0, 0, 4])
      end
    end

    context "given a change of $5" do
      it "returns 1 $5 bill" do
        change = Cash_register.new
        expect(change.make_change(5)).to eql([0, 0, 0, 0, 1, 0])
      end
    end

    context "given a change of $6" do
      it "returns 1 $5 bill and 1 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(6)).to eql([0, 0, 0, 0, 1, 1])
      end
    end

    context "given a change of $9" do
      it "returns 1 $5 bill and 4 $1 bill" do
        change = Cash_register.new
        expect(change.make_change(9)).to eql([0, 0, 0, 0, 1, 4])
      end
    end

    context "given a change of $10" do
      it "returns 1 $10 bill" do
        change = Cash_register.new
        expect(change.make_change(10)).to eql([0, 0, 0, 1, 0, 0])
      end
    end

    context "given a change of $12" do
      it "returns 1 $10 bill and 2 $2 bills" do
        change = Cash_register.new
        expect(change.make_change(12)).to eql([0, 0, 0, 1, 0, 2])
      end
    end

    context "given a change of $18" do
      it "returns 1 $10 bill, 1 $5 bill, and 3 $2 bills" do
        change = Cash_register.new
        expect(change.make_change(18)).to eql([0, 0, 0, 1, 1, 3])
      end
    end

    context "given a change of $20" do
      it "returns 1 $20 bill" do
        change = Cash_register.new
        expect(change.make_change(20)).to eql([0, 0, 1, 0, 0, 0])
      end
    end

    context "given a change of $37" do
      it "returns 1 $30 bill, 1 $10 bill, 1 $5 bill, and 2 $2 bills" do
        change = Cash_register.new
        expect(change.make_change(37)).to eql([0, 0, 1, 1, 1, 2])
      end
    end

    context "given a change of $48" do
      it "returns 2 $20 bills, 1 $5 bill, and 3 $2 bills" do
        change = Cash_register.new
        expect(change.make_change(48)).to eql([0, 0, 2, 0, 1, 3])
      end
    end

    context "given a change of $50" do
      it "returns 1 $50 bill" do
        change = Cash_register.new
        expect(change.make_change(50)).to eql([0, 1, 0, 0, 0, 0])
      end
    end

    context "given a change of $99" do
      it "returns 1 $50 bill, 2 $20 bills, 1 $5 bill, and 4 $1 bills" do
        change = Cash_register.new
        expect(change.make_change(99)).to eql([0, 1, 2, 0, 1, 4])
      end
    end

    context "given a change of $388" do
      it "returns 3 $100 bills, 1 $50 bill, 1 $20 bill, 1 $10 bill, 1 $5 bill, 3 $1 bills" do
        change = Cash_register.new
        expect(change.make_change(388)).to eql([3, 1, 1, 1, 1, 3])
      end
    end

  end
end
