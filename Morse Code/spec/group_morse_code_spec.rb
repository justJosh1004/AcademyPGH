require 'morse_class'

describe Morse_converter do
  describe "the function to_morse" do
    context "when given the character a" do
      it "returns .-" do
        alpha = Morse_converter.new
        expect(alpha.to_morse('a')).to eql(".- ")
      end
    end
  end

  describe "the function to_morse" do
    context "when given the string hello" do
      it "returns .... . .-.. .-.. ---" do
        alpha = Morse_converter.new
        expect(alpha.to_morse("hello")).to eql(".... . .-.. .-.. --- ")
      end
    end
  end

  describe "the function to_morse" do
    context "when given the string hello world" do
      it "returns .... . .-.. .-.. ---   .-- --- .-. .-.. -.. " do
        alpha = Morse_converter.new
        expect(alpha.to_morse("hello world")).to eql(".... . .-.. .-.. ---   .-- --- .-. .-.. -.. ")
      end
    end
  end

  describe "the function to_morse" do
    context "when given the string hello world" do
      it "returns .... . .-.. .-.. ---   .-- --- .-. .-.. -.. " do
        alpha = Morse_converter.new
        expect(alpha.to_morse("Hello World")).to eql(".... . .-.. .-.. ---   .-- --- .-. .-.. -.. ")
      end
    end
  end

end
