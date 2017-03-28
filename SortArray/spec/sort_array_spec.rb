require 'sort_array_class'

describe "Sort" do
  describe "the funtion sort_numbers" do
    context "given an array of [1]" do
      it "returns [1]" do
        sort = Sort.new
        num_array = [1]
        expect(sort.sort_numbers(num_array)).to eql([1])
      end
    end

      context "given an array of [2, 3, 1]" do
        it "returns [1, 2, 3]" do
          sort = Sort.new
          num_array = [2, 3, 1]
          expect(sort.sort_numbers(num_array)).to eql([1, 2, 3])
        end
      end

      context "given an array of [2, 3, 1, 9, 5]" do
        it "returns [1, 2, 3, 5, 9]" do
          sort = Sort.new
          num_array = [2, 3, 1, 9, 5]
          expect(sort.sort_numbers(num_array)).to eql([1, 2, 3, 5, 9])
        end
      end

  end
end
