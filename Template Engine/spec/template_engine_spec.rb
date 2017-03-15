require 'template_engine'

describe Template_reader do
  describe ".get_template_fields" do
    context "when given Hi {{name}}" do
      it "returns ['name']" do
        tr = Template_reader.new
        tr.set_template "Hi {{name}}"
        expect(tr.get_template_fields).to match_array(["name"])
      end
    end

    context "when given Hi {{name}}, today is {{day}}" do
      it "returns ['name', 'day']" do
        tr = Template_reader.new
        tr.set_template "Hi {{name}}, today is {{day}}"
        expect(tr.get_template_fields).to match_array(["name", "day"])
      end
    end
  end

  describe ".run_template" do
    context "when given Hi {{name}} and {'name' +. 'john'}" do
      it "returns Hi John" do
        tr = Template_reader.new
        tr.set_template "Hi {{name}}"
        expect(tr.run_template({"name" => "John"})).to eql("Hi John")
      end
    end

    context "when given Hi {{name}}, today is {{day}}, it is a good day to die" do
      it "returns Hi John, today is {{day}}" do
        tr = Template_reader.new
        tr.set_template "Hi {{name}}, today is {{day}}, it is a good day to die"
        expect(tr.run_template({"name" => "John", "day" => "Wednesday"})).to eql("Hi John, today is Wednesday, it is a good day to die")
      end
    end
  end
end
